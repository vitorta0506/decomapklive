.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V",
        "run",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMCurrentIndex()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getHomeUser()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v1, v0

    const/4 v0, 0x4

    .line 4
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getRecommendPlanetAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setRecommendPlanetAdapter(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getRecommendPlanetAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setAdapter(Lk9/b;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getRecommendPlanetAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lk9/b;->notifyDataSetChanged()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->access$dismissLoadingView(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isCacheData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->access$getPlanetData(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_8

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0391

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getHomeUser()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMCurrentIndex()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 14
    :goto_2
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMCurrentIndex()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setMCurrentIndex(I)V

    if-eqz v4, :cond_7

    const v5, 0x7f0a0dc5

    .line 15
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    const v5, 0x7f0a00fd

    .line 18
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "view.findViewById(R.id.avatar_view)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 19
    invoke-virtual {v5, v4, v7}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 20
    :cond_7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViews()Ljava/util/List;

    move-result-object v4

    const-string v5, "view"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViewRunnable()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViewRunnable()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_3
    return-void
.end method
