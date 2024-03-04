.class public final Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final myRooms:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rlContent:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stbpView:Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userGuide:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userGuideMyRoom:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewPager:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/view/ViewStub;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->myRooms:Landroid/widget/LinearLayout;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->rlContent:Landroid/widget/RelativeLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->stbpView:Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->userGuide:Landroid/view/ViewStub;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->userGuideMyRoom:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->viewPager:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a03e4

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v4, :cond_0

    const v0, 0x7f0a07df

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 3
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0ae4

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0af5

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0b26

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0d9a

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewStub;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0d9c

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0e05

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    if-eqz v12, :cond_0

    .line 10
    new-instance p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v12}, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/view/ViewStub;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;
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

    const v0, 0x7f0d01a1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentLayoutLiveViewPagerBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
