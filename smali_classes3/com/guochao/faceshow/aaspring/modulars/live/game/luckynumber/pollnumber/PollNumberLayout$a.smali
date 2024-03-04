.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->f(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez p2, :cond_1

    .line 3
    instance-of p2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 5
    instance-of v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;)I

    move-result v3

    add-int/2addr p2, v2

    if-eq v3, p2, :cond_0

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 9
    :cond_0
    move-object p1, v0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->f(Z)V

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    invoke-static {}, Lb9/a;->a()Lb9/a;

    move-result-object p1

    invoke-virtual {p1}, Lb9/a;->c()V

    goto :goto_0

    .line 12
    :cond_1
    instance-of p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz p1, :cond_2

    .line 13
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->f(Z)V

    .line 14
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lb9/a;->a()Lb9/a;

    move-result-object p1

    invoke-virtual {p1}, Lb9/a;->e()V

    :cond_2
    :goto_0
    return-void
.end method
