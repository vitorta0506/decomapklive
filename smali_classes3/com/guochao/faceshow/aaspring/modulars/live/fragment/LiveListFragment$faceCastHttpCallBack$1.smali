.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1",
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
        "onCompleted",
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setEnableLoadMore(Z)V

    return-void
.end method

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

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$notifyDataLoaded(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Z)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
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

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->o:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMCurrSelectTypeId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p2

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_tab_success:Ljava/lang/String;

    if-gez p2, :cond_1

    const-string p2, "0"

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$getTracked$p(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMCurrSelectTypeId()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCurrentPage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "1"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_list_page:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$setTracked$p(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Z)V

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setMData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->refreshAfterData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
