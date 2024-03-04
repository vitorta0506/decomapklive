.class public final Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final comment:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final reply:Lcom/google/android/material/button/MaterialButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->comment:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->reply:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0227

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a095c

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0962

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0969

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    if-eqz v7, :cond_0

    .line 5
    new-instance v0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Lcom/google/android/material/button/MaterialButton;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d004e

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityFeedbackHistoryDetailBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
