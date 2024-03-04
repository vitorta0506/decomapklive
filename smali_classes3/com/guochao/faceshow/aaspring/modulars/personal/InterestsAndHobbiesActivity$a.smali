.class Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/HobbyResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/HobbyResultBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/mine/model/HobbyResultBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/mine/model/HobbyResultBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/HobbyResultBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getUserHobbies()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getUserHobbies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getUserHobbies()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getUserHobbies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setSelect(Z)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getSysHobbies()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getSysHobbies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getSysHobbies()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getUserHobbies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    .line 10
    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 11
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setSelect(Z)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getSysHobbies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;-><init>(ILjava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addData(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;-><init>(ILjava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addData(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;-><init>(ILjava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addData(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :cond_6
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/mine/model/HobbyResultBean;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/mine/model/HobbyResultBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;->a(Lcom/guochao/faceshow/mine/model/HobbyResultBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
