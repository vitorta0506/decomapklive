.class public Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public backIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleHelp:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager/widget/ViewPager;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->b:Ljava/util/List;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->c:Ljava/lang/String;

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

    const v0, 0x7f0d006f

    return v0
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->titleHelp:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "live_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ownerid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->a:Ljava/util/List;

    const v1, 0x7f120489

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->a:Ljava/util/List;

    const v1, 0x7f12048b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->a:Ljava/util/List;

    const v1, 0x7f12048a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;-><init>()V

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;-><init>()V

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c2(Ljava/lang/String;I)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->d:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c2(Ljava/lang/String;I)V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->d:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c2(Ljava/lang/String;I)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/guochao/faceshow/adapter/ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->tablayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const v0, 0x7f080319

    .line 20
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;->backIV:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
