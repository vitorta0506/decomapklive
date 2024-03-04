.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c2()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->MusicLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;J)J

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->MusicLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImageModel(I)V

    .line 15
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setUserId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setMname(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setCountry(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getEnableTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setCreateTime(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserCountryFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setIntroduce(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setTopicName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setContent(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->Y1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
