.class Lcom/guochao/faceshow/activity/MusicActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity;->q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/bean/MusicTypeList$Page;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/MusicTypeList$Page;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/MusicTypeList$Page;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget v1, p1, Lcom/guochao/faceshow/bean/MusicTypeList$Page;->totalPage:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/MusicActivity;->t0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->n0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/bean/MusicTypeList$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->I0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    move-result-object v0

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->I0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    move-result-object v0

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->N0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicTypeList$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->N0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicTypeList$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->n0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->s0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$d;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    :cond_4
    :goto_2
    return-void
.end method
