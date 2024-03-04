.class public final Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyView:Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rcvMusicList:Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->emptyView:Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->rcvMusicList:Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0332

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;

    move-result-object v4

    const v0, 0x7f0a0936

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;

    move-result-object v5

    const v0, 0x7f0a093a

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0aca

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v7, :cond_0

    .line 7
    new-instance v0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/databinding/LayoutSearchEmptyViewBinding;Lcom/guochao/faceshow/databinding/FragmentBaseSearchRecyclerViewBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;
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

    const v0, 0x7f0d01e1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentUgcMusicBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
