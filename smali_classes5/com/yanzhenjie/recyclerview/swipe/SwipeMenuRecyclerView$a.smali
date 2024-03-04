.class Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field final synthetic c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->a(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->k(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->a(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;)Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
