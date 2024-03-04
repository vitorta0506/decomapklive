.class Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/bean/PageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/PageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/PageBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    iget v1, p1, Lcom/guochao/faceshow/bean/PageBean;->count:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->l0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;->a:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V

    :goto_1
    return-void
.end method
