.class public final Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bgView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivBack:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/duolingo/open/rtlviewpager/RtlViewPager;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->bgView:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->ivBack:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/faceshow/signin/R$id;->bg_view:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    sget v0, Lcom/guochao/faceshow/signin/R$id;->iv_back:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 5
    sget v0, Lcom/guochao/faceshow/signin/R$id;->tabs:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v5, :cond_0

    .line 7
    sget v0, Lcom/guochao/faceshow/signin/R$id;->viewpager:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v6, :cond_0

    .line 9
    sget v0, Lcom/guochao/faceshow/signin/R$id;->viewpager_single:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v7, :cond_0

    .line 11
    new-instance v0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/duolingo/open/rtlviewpager/RtlViewPager;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;
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
    sget v0, Lcom/guochao/faceshow/signin/R$layout;->dialog_live_sign_center:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/databinding/DialogLiveSignCenterBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
