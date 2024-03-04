.class public Lcom/guochao/faceshow/views/DefineLoadMoreView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$f;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/yanzhenjie/loading/LoadingView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->d:Z

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const v0, 0x7f0d02d1

    .line 7
    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0712

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/loading/LoadingView;

    iput-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    const p1, 0x7f0a0cbc

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060024

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v2, p1, v1, v0}, Lcom/yanzhenjie/loading/LoadingView;->a(III)V

    .line 14
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120524

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
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
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120683

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120524

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    iput-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->a:Lcom/yanzhenjie/loading/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->b:Landroid/widget/TextView;

    const-string/jumbo v0, "\u70b9\u6211\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->c:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/DefineLoadMoreView;->d:Z

    return-void
.end method
