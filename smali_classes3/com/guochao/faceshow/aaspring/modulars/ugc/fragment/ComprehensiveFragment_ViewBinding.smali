.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    .line 3
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a01cd

    const-string v2, "field \'cdlLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a00b9

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0c6b

    const-string v2, "field \'rvDefault\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0c9a

    const-string v2, "field \'rvHostSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a09ed

    const-string v2, "field \'rvHeadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a09c6

    const-string v1, "field \'rlRelatedUserMore\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlRelatedUserMore\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a09f0

    const-string v2, "field \'rvVoiceRoomView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a09c7

    const-string v1, "field \'rlRelatedVoiceRoom\' and method \'onVoiceRoomViewClicked\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlRelatedVoiceRoom\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedVoiceRoom:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a09ee

    const-string v2, "field \'rvItemView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a0962

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d1e

    const-string v2, "field \'tvUserTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d27

    const-string v2, "field \'tvVoiceRoomTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvVoiceRoomTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0332

    const-string v1, "field \'emptyView\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ce8

    const-string v2, "field \'tvRelatedDynamic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvRelatedDynamic:Landroid/widget/TextView;

    .line 23
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a0aca

    const-string v2, "field \'srlRefresh\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedVoiceRoom:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvVoiceRoomTitle:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvRelatedDynamic:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->c:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
