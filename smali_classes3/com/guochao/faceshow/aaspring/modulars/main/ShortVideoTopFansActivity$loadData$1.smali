.class public final Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J \u0010\n\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
        "Lg7/a;",
        "exp",
        "",
        "onFailure",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "onResponse",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    iget-object v1, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    goto :goto_4

    .line 5
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    :goto_4
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;->onResponse(Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
