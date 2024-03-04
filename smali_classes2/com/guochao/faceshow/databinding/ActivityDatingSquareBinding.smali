.class public final Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final floatTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final genderSelector:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivImage:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svImage:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->content:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->floatTitle:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->genderSelector:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->ivImage:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->title:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    const v0, 0x7f0a042b

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a0466

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a05b0

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0af2

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0b26

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v7, :cond_0

    const v0, 0x1020016

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0bc5

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/Toolbar;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0e05

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    if-eqz v10, :cond_0

    .line 10
    new-instance p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v10}, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;)V

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;
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

    const v0, 0x7f0d0042

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityDatingSquareBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
