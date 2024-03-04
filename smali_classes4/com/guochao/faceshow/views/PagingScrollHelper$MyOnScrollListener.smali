.class public Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/PagingScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnScrollListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/PagingScrollHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/views/PagingScrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    if-nez p2, :cond_6

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/views/PagingScrollHelper;->a(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->c:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    if-eq p2, v0, :cond_6

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/views/PagingScrollHelper;->a(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    const/16 v1, -0x3e8

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_2

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/views/PagingScrollHelper;->c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget p2, p2, Lcom/guochao/faceshow/views/PagingScrollHelper;->f:I

    sub-int/2addr p1, p2

    if-gez p1, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0x3e8

    goto :goto_3

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/views/PagingScrollHelper;->e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget v0, v0, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget p2, p2, Lcom/guochao/faceshow/views/PagingScrollHelper;->g:I

    sub-int/2addr p1, p2

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x3e8

    :goto_2
    move v4, v1

    :cond_5
    const/4 v1, 0x0

    .line 9
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->h(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->onFling(II)Z

    :cond_6
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1, p3}, Lcom/guochao/faceshow/views/PagingScrollHelper;->d(Lcom/guochao/faceshow/views/PagingScrollHelper;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnScrollListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/PagingScrollHelper;->f(Lcom/guochao/faceshow/views/PagingScrollHelper;I)I

    return-void
.end method
