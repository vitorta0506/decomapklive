.class public final Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getOneVOneRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
        "recordHistory",
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
.field final synthetic $pageNo:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->$pageNo:I

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
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->$pageNo:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v2, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd$default(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;ZILjava/lang/Object;)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutSingleRecyclerviewBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$getOneVOneRecord$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
