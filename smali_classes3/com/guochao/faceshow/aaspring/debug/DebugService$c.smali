.class public Lcom/guochao/faceshow/aaspring/debug/DebugService$c;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/debug/DebugService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/debug/DebugService;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a(Lcom/guochao/faceshow/aaspring/debug/DebugService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lx7/a;

    invoke-direct {v1, p1, p2}, Lx7/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a(Lcom/guochao/faceshow/aaspring/debug/DebugService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-lt p1, p2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a(Lcom/guochao/faceshow/aaspring/debug/DebugService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
