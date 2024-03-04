.class public final Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final firstUse:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recyclerView:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/guochao/faceshow/aaspring/views/TouchDownsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tochdow:Lcom/guochao/faceshow/aaspring/views/TouchDownsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ugcFooter:Lcom/guochao/faceshow/aaspring/views/UgcFooter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/views/TouchDownsView;Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Lcom/guochao/faceshow/aaspring/views/TouchDownsView;Lcom/guochao/faceshow/aaspring/views/UgcFooter;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/TouchDownsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/views/TouchDownsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/aaspring/views/UgcFooter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/TouchDownsView;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->firstUse:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->recyclerView:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->tochdow:Lcom/guochao/faceshow/aaspring/views/TouchDownsView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->ugcFooter:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a03f3

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a095c

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0962

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v6, :cond_0

    .line 4
    move-object v7, p0

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/TouchDownsView;

    const v0, 0x7f0a0d64

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz v8, :cond_0

    .line 6
    new-instance p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v8}, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;-><init>(Lcom/guochao/faceshow/aaspring/views/TouchDownsView;Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Lcom/guochao/faceshow/aaspring/views/TouchDownsView;Lcom/guochao/faceshow/aaspring/views/UgcFooter;)V

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;
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

    const v0, 0x7f0d017e

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->getRoot()Lcom/guochao/faceshow/aaspring/views/TouchDownsView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/aaspring/views/TouchDownsView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicVideoListBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/TouchDownsView;

    return-object v0
.end method
