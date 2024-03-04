.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a093a

    const-string v2, "field \'rcvRecommended\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0936

    const-string v1, "field \'MusicLayout\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->MusicLayout:Landroid/view/View;

    .line 6
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a0962

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v0, 0x7f0a0332

    const-string v1, "field \'emptyView\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->emptyView:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a0aca

    const-string v2, "field \'srlRefresh\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->MusicLayout:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->emptyView:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
