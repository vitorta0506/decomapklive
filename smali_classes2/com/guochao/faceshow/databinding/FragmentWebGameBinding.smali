.class public final Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final click:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Lcom/guochao/faceshow/aaspring/views/WebGameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentLayout:Lcom/guochao/faceshow/aaspring/views/RoundCornerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final realContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/WebGameLayout;Lcom/guochao/faceshow/aaspring/views/RoundCornerView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/views/WebGameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/aaspring/views/RoundCornerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->click:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->content:Lcom/guochao/faceshow/aaspring/views/WebGameLayout;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->contentLayout:Lcom/guochao/faceshow/aaspring/views/RoundCornerView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->realContent:Landroid/widget/FrameLayout;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0207

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a0255

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a025c

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;

    if-eqz v5, :cond_0

    .line 4
    move-object v6, p0

    check-cast v6, Landroid/widget/FrameLayout;

    const v0, 0x7f0a0e43

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v7, :cond_0

    .line 6
    new-instance p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/WebGameLayout;Lcom/guochao/faceshow/aaspring/views/RoundCornerView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;
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

    const v0, 0x7f0d01f8

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentWebGameBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
