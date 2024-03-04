.class public Lcom/guochao/faceshow/mine/view/OpenVideoActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a047f

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v1, 0x7f0a0961

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/OpenVideoActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 5
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
