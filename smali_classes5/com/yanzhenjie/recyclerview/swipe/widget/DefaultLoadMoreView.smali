.class public Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/yanzhenjie/loading/LoadingView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 7
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42700000    # 60.0f

    mul-float p1, p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$layout;->recycler_swipe_view_load_more:I

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    sget p1, Lcom/yanzhenjie/recyclerview/swipe/R$id;->loading_view:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/loading/LoadingView;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    .line 11
    sget p1, Lcom/yanzhenjie/recyclerview/swipe/R$id;->tv_load_more_message:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$color;->recycler_swipe_color_loading_color1:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/yanzhenjie/recyclerview/swipe/R$color;->recycler_swipe_color_loading_color2:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yanzhenjie/recyclerview/swipe/R$color;->recycler_swipe_color_loading_color3:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/yanzhenjie/loading/LoadingView;->a(III)V

    .line 16
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    sget v1, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_load_more_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_data_empty:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_more_not:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public c(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->b:Landroid/widget/TextView;

    sget v0, Lcom/yanzhenjie/recyclerview/swipe/R$string;->recycler_swipe_click_load_more:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultLoadMoreView;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;->onLoadMore()V

    :cond_0
    return-void
.end method
