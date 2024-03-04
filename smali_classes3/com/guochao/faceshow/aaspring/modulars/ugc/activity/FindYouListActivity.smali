.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/StringBuilder;

.field private h:Ljava/lang/StringBuilder;

.field private i:Ljava/lang/StringBuilder;

.field private j:J

.field k:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->j:J

    return-void
.end method


# virtual methods
.method public b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;ILcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->g(ILcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;ILcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V

    return-void
.end method

.method public d0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d038f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->setOnPhotoClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder$c;)V

    return-object p2
.end method

.method public e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;ILcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "friends_meetme_search_result_click"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

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

    const v0, 0x7f0d0054

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const v0, 0x7f120954

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "languageList"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->d:Ljava/util/ArrayList;

    const-string v1, "friendSetting"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->f:Ljava/util/ArrayList;

    const/16 v1, 0x12

    const-string v2, "minYear"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->b:I

    const/16 v1, 0x32

    const-string v2, "maxYear"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->c:I

    const-string v1, "residence"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->e:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const-string v2, "sex"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->a:I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->g:Ljava/lang/StringBuilder;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->h:Ljava/lang/StringBuilder;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->i:Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->d:Ljava/util/ArrayList;

    const-string v1, ","

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    .line 17
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->getCountry_id()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 23
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 25
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 26
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    const v1, 0x7f0603ce

    .line 27
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x43160000    # 150.0f

    .line 28
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f0a0330

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public loadData(I)V
    .locals 6

    const-string v0, "tokens/user/info/findAroundMan"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "limit"

    const-string v1, "20"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "type"

    const-string v1, "2"

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->a:I

    const-string v1, ""

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "sex"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->b:I

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "statAge"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->c:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "endAge"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string v3, "nowAddress"

    invoke-virtual {p1, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    const-string v3, "languageIds"

    invoke-virtual {p1, v3, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    const-string v2, "makeFriendIds"

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->j:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baseLineTime"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->d0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFocusEvent(Ly7/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-virtual {p1}, Ly7/e;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setIsTutual(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 7
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->h()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;->i(Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$PeopleNearByHolder;ILcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)V

    return-void
.end method
