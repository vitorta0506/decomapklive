.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;
.super Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public b(IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x3

    :goto_0
    if-lez v1, :cond_e

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    const-string v4, "0"

    if-eq v1, v3, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    if-eq v1, v0, :cond_1

    goto/16 :goto_a

    :cond_1
    const/16 v3, 0x64

    if-ge p1, v3, :cond_2

    add-int/lit8 v3, v2, 0xa

    goto :goto_1

    .line 3
    :cond_2
    div-int/lit8 v3, p1, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v2, 0xa

    .line 4
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_1
    if-eqz p2, :cond_3

    .line 5
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 7
    :goto_2
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    .line 8
    instance-of v6, v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz v6, :cond_d

    .line 9
    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    sub-int/2addr v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->d(I)V

    .line 10
    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->g(Z)V

    goto/16 :goto_a

    :cond_5
    const/16 v3, 0xa

    if-ge p1, v3, :cond_6

    add-int/lit8 v3, v2, 0xa

    goto :goto_4

    .line 12
    :cond_6
    div-int/lit8 v4, p1, 0xa

    rem-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v2, 0xa

    .line 13
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_4
    if-eqz p2, :cond_7

    .line 14
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_5

    .line 15
    :cond_7
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 16
    :goto_5
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    .line 17
    instance-of v6, v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz v6, :cond_d

    .line 18
    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v3, v2

    :goto_6
    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->d(I)V

    .line 19
    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->g(Z)V

    goto :goto_a

    :cond_9
    if-nez p1, :cond_a

    add-int/lit8 v3, v2, 0xa

    goto :goto_7

    .line 21
    :cond_a
    rem-int/lit8 v3, p1, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v2, 0xa

    .line 22
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_7
    if-eqz p2, :cond_b

    .line 23
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_8

    .line 24
    :cond_b
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 25
    :goto_8
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$c;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    .line 26
    instance-of v6, v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz v6, :cond_d

    .line 27
    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;

    if-eqz p2, :cond_c

    goto :goto_9

    :cond_c
    sub-int/2addr v3, v2

    :goto_9
    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->d(I)V

    .line 28
    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->g(Z)V

    :cond_d
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_e
    :goto_b
    return-void
.end method
