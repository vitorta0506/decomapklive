.class Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->H0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->u:Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->c(Z)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    sget-object v2, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterLiveList(Ljava/util/List;)V

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->c(Z)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getAdapter()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->a:Z

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->P0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->x:I

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getAdapter()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->a()V

    if-ne v2, v0, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->d1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setCurrentItem(I)V

    :cond_5
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

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$h;->onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
