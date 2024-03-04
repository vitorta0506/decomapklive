.class public final Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final gudieSlideUp:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svga:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->gudieSlideUp:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->svga:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->text:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const v1, 0x7f0a0af5

    .line 2
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_0

    const v1, 0x7f0a0b47

    .line 3
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 4
    new-instance p0, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;-><init>(Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/TextView;)V

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;
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

    const v0, 0x7f0d0351

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->getRoot()Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutUserGuideSlideToSeeLiveroomBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    return-object v0
.end method
