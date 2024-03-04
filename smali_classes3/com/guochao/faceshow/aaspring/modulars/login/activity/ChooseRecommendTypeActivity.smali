.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;
.implements Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$e;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

.field b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->c:Ljava/util/List;

    return-void
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

    const v0, 0x7f0d0039

    return v0
.end method

.method public i(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->d:Z

    const p1, 0x7f0a042c

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "online_page"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010029

    const v1, 0x7f01002b

    const v2, 0x7f01002e

    const v3, 0x7f010030

    .line 10
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "want_page"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    const v2, 0x7f0a0255

    .line 8
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    .line 9
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Z()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "skip_click"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->skip(Landroid/view/View;)V

    :cond_0
    return-void
.end method
