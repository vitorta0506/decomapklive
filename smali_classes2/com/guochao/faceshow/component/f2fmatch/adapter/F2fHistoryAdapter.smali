.class public final Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "()V",
        "addLoadMoreModule",
        "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;",
        "baseQuickAdapter",
        "convert",
        "",
        "holder",
        "item",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0244

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/views/LoadMoreView;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/views/LoadMoreView;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    return-void
.end method


# virtual methods
.method public addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/LoadMoreModule$DefaultImpls;->addLoadMoreModule(Lcom/chad/library/adapter/base/module/LoadMoreModule;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    return-object p1
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->c(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fHistoryAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;)V

    return-void
.end method
