.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->loadNetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J,\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$showEmptyView(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getRefreshLay()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_0
    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    if-eqz v1, :cond_2

    const-string v2, "it.countryOfStateList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$showEmptyView(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$loadNetData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
