.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->T1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->Z1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    const/16 v2, 0xa

    .line 8
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    const/4 v2, 0x5

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImageModel(I)V

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImg(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setUserId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setMname(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setCountry(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getEnableTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setCreateTime(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserCountryFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setIntroduce(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setTopicName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setContent(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method
