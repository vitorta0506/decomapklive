.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$500(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$608(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$700(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ar"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$502(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Z)Z

    goto :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$502(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Z)Z

    :goto_2
    return-void
.end method
