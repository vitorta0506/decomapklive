.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->onBackPressed()V

    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v2, :cond_1

    .line 4
    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "resume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    const-string v2, "pause"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    :cond_2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const v0, 0x7f010025

    const v1, 0x7f010022

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

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

    const v0, 0x7f0d0023

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    const v2, 0x7f0a0440

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a079e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
