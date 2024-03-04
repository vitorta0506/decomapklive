.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->v2(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;
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
            "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget v0, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->totalPage:I

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->n2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;I)I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget v0, p2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->p2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->p2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget p2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->I:I

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->m2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)I

    move-result p1

    const/4 v0, 0x0

    if-lt p2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->y:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {p1, v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g(ZZ)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->y:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {p1, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->g(ZZ)V

    :cond_2
    :goto_1
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
    check-cast p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$f;->onResponse(Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
