.class Lcom/guochao/faceshow/mine/view/MyFansActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MyFansActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/MyFansActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MyFansActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyFansActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;
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
            "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyFansActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyFansActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyFansActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyFansActivity;->showEmptyView()V

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
            "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyFansActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyFansActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyFansActivity;->showEmptyView()V

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

    check-cast p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/MyFansActivity$a;->a(Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
