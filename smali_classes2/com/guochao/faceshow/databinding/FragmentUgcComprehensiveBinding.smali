.class public final Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyView:Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rlRelatedUserMore:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rlRelatedVoiceRoomMore:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvHeadView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvItemView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvDefault:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvHostSearch:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvRelatedDynamic:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvUserTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvVoiceRoomTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ugcFooter:Lcom/guochao/faceshow/aaspring/views/OldFooter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/OldFooter;)V
    .locals 2
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/guochao/faceshow/aaspring/views/OldFooter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->emptyView:Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rlRelatedVoiceRoomMore:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->tvDefault:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->tvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->tvRelatedDynamic:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->tvUserTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->tvVoiceRoomTitle:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->ugcFooter:Lcom/guochao/faceshow/aaspring/views/OldFooter;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;
    .locals 21
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a00b9

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a01cd

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0332

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;

    move-result-object v7

    const v1, 0x7f0a0962

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a09c6

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a09c7

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a09ed

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a09ee

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a09f0

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0aca

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0c6b

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0c9a

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0ce8

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0d1e

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0d27

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0d64

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/guochao/faceshow/aaspring/views/OldFooter;

    if-eqz v20, :cond_0

    .line 18
    new-instance v1, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v20}, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/OldFooter;)V

    return-object v1

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d01df

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentUgcComprehensiveBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
