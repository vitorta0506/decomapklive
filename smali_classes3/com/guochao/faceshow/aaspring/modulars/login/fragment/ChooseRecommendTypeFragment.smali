.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field d:Landroid/os/Handler;

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->c:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->b:Z

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->b:Z

    return p1
.end method


# virtual methods
.method R1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    .line 2
    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->c:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->c:Z

    return-void
.end method

.method public S1()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a0801

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->b:Z

    const-string v3, "tokens/user/recommend/v3/recommendUserList"

    .line 7
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-nez v4, :cond_1

    const-string v4, "HOME_COUNTRY"

    goto :goto_0

    :cond_1
    const-string v4, "FOREIGN_COUNTRY"

    :goto_0
    const-string v5, "location"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    const-string v5, "26"

    if-nez v4, :cond_2

    const-string v4, "18"

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    const-string v6, "startAge"

    invoke-virtual {v3, v6, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 10
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v6, v6, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "100"

    :goto_2
    const-string v6, "endAge"

    invoke-virtual {v4, v6, v5}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    instance-of v7, v7, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;

    const/4 v8, 0x2

    if-eqz v7, :cond_6

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 16
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getType()I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 17
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getType()I

    move-result v10

    if-ne v10, v2, :cond_4

    .line 19
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_6
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v7, v7, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-nez v7, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 21
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_8

    .line 23
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v5, v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-nez v5, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 25
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_a

    .line 27
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_b

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-le v1, v2, :cond_b

    .line 29
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_b
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "makeFriendIds"

    invoke-virtual {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 32
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;JLandroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d016c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mNext:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120060

    goto :goto_0

    :cond_0
    const v0, 0x7f120774

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    const v1, 0x7f120775

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    const v1, 0x7f120776

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;

    if-eqz p1, :cond_3

    const v0, 0x7f1203be

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    const v2, 0x7f120777

    invoke-direct {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;-><init>(ILjava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->a:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    :cond_4
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->c:Z

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public next(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->c:Z

    if-nez p1, :cond_0

    const p1, 0x7f120191

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->b:Z

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->S1()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
