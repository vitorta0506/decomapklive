.class public final Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final count:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flBottomNavigation:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCompile:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewPager:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/HackyViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/aaspring/views/HackyViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->count:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->flBottomNavigation:Landroid/widget/FrameLayout;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->flContent:Landroid/widget/FrameLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->tvCompile:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->viewPager:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0269

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0410

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 3
    move-object v6, p0

    check-cast v6, Landroid/widget/FrameLayout;

    const v0, 0x7f0a0c5f

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0e05

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    if-eqz v8, :cond_0

    .line 6
    new-instance p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/HackyViewPager;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;
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

    const v0, 0x7f0d00ad

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivitySendImagePreviewBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method