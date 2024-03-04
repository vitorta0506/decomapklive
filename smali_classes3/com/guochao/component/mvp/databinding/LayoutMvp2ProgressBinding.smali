.class public final Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bigWhitePointLay:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mvpTV1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mvpTV2:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectProgress:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->bigWhitePointLay:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->mvpTV1:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->mvpTV2:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->selectProgress:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/component/mvp/R$id;->big_white_point_lay:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    sget v0, Lcom/guochao/component/mvp/R$id;->mvpTV1:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 5
    sget v0, Lcom/guochao/component/mvp/R$id;->mvpTV2:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 7
    sget v0, Lcom/guochao/component/mvp/R$id;->select_progress:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 9
    new-instance v0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;
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

    .line 2
    sget v0, Lcom/guochao/component/mvp/R$layout;->layout_mvp2_progress:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->bind(Landroid/view/View;)Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/component/mvp/databinding/LayoutMvp2ProgressBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
