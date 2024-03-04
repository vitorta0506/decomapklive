.class Ld7/d$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/d;->init(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field final synthetic c:Ld7/d;


# direct methods
.method constructor <init>(Ld7/d;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Ld7/d$a;->c:Ld7/d;

    iput-object p2, p0, Ld7/d$a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Ld7/d$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/d$a;->c:Ld7/d;

    invoke-virtual {v0}, Ld7/d;->o()Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Ld7/d$a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ld7/d$a;->b:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
