.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTagId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 8
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->setCheck(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method
