.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->B0(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;-><init>()V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;->setList(Ljava/util/ArrayList;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->setRightFirstResEnable(Z)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->a:I

    if-ne p2, v1, :cond_1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->clearAll()V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;->getList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {v2, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addData(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getItemCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/16 p2, 0x8

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->include:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->setRightFirstResEnable(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$b;->a(Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
