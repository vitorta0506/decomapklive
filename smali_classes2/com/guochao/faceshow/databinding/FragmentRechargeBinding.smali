.class public final Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final fragmentContainer:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gameCoinIndicator:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivTitleBar:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final normalIconIndicator:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rechargeHeader:Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvGameCoin:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvNormalCoin:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/fragment/app/FragmentContainerView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Lcom/guochao/faceshow/views/ObservableScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/guochao/faceshow/views/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->fragmentContainer:Landroidx/fragment/app/FragmentContainerView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->gameCoinIndicator:Landroid/view/View;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->ivTitleBar:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->normalIconIndicator:Landroid/view/View;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->rechargeHeader:Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->tvGameCoin:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->tvNormalCoin:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0440

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0459

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f0a05ee

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0820

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const v0, 0x7f0a0947

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;

    move-result-object v8

    const v0, 0x7f0a0962

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0a09

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/guochao/faceshow/views/ObservableScrollView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0c96

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0cc8

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 11
    new-instance v0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/fragment/app/FragmentContainerView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/guochao/faceshow/databinding/HeaderRechargeBinding;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Lcom/guochao/faceshow/views/ObservableScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;
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

    const v0, 0x7f0d01cc

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentRechargeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
