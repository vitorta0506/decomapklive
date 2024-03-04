.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->e:I

    .line 3
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->getRecommendList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setAdapter(Lk9/b;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$e;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$e;->i(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0394

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->getRecommendList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget v5, v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->e:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;

    .line 10
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget v6, v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->e:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->e:I

    if-eqz v4, :cond_3

    const v5, 0x7f0a0dc5

    .line 11
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    const v5, 0x7f0a00fd

    .line 14
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 15
    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    const v5, 0x7f0a01ec

    .line 16
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 17
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 18
    :cond_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
