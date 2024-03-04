.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$d;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$e;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

.field b:Z

.field c:Lcom/tencent/imsdk/v2/V2TIMSendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->b:Z

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$d;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$d;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->c:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->d:Ljava/util/List;

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->e:I

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;

    return-void
.end method


# virtual methods
.method public P1(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setOnTagClickListener(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;)V

    return-void
.end method

.method public enter(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->b:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0801

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->getRecommendList()Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v3, "enter_click"

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->skip(Landroid/view/View;)V

    return-void

    .line 17
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    :goto_1
    if-ge v1, v0, :cond_5

    .line 18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_5
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->friend_add:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->c(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fromSource"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "aids"

    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;Landroid/view/View;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01ce

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/guochao/faceshow/bean/UserBean;->isFirstRegist:Z

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public skip(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "skip_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityUpIn(Landroid/content/Intent;)V

    const-string p1, "NEW_USER_EFFECTIVE"

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
