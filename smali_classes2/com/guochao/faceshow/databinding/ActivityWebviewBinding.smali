.class public final Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;->webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "rootView"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;

    invoke-direct {v0, p0, p0}, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;-><init>(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;
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

    const v0, 0x7f0d00d0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;->getRoot()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityWebviewBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    return-object v0
.end method
