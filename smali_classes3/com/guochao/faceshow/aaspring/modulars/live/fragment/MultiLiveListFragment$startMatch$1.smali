.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->startMatch()V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J \u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016J\u0016\u0010\u000b\u001a\u00020\u00032\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "",
        "onCompleted",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
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
.field final synthetic $animator:Landroid/animation/ObjectAnimator;

.field final synthetic $icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Landroid/animation/ObjectAnimator;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->$animator:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setMatching(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->$animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->$icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

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

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->getCancelPost()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->setCancelPost(Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getMatchNum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "matchNum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;->access$setMatchNum(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "roomList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    .line 10
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const-string v2, "0"

    .line 11
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setCurrentPage(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {v2, p2, p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->f(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment$startMatch$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
