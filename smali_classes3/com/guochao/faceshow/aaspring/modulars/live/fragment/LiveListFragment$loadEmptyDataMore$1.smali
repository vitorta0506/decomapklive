.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->loadEmptyDataMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

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
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$notifyDataLoaded(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Z)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    const-string v1, "data.roomList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$notifyDataLoaded(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Z)V

    return-void

    .line 5
    :cond_2
    :goto_1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;->onFailure(Lg7/a;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
