.class public final Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivLeftBack:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final showDialogToggle:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final signinRules:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarSpace:Landroid/widget/Space;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleBar:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvSignedCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Landroid/widget/TextView;
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
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Space;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/duolingo/open/rtlviewpager/RtlViewPager;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
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
    .param p6    # Landroid/widget/Space;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
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
    .param p11    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->ivLeftBack:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->showDialogToggle:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->signinRules:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->statusBarSpace:Landroid/widget/Space;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->titleBar:Landroid/widget/FrameLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvSignedCount:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->tvTitle:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 13
    iput-object p12, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->viewpagerSingle:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;
    .locals 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/faceshow/signin/R$id;->iv_left_back:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/faceshow/signin/R$id;->recycler_view:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/faceshow/signin/R$id;->show_dialog_toggle:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/faceshow/signin/R$id;->signin_rules:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/faceshow/signin/R$id;->status_bar_space:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Space;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/faceshow/signin/R$id;->tabs:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/faceshow/signin/R$id;->title_bar:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/faceshow/signin/R$id;->tv_signed_count:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcom/guochao/faceshow/signin/R$id;->tv_title:I

    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 19
    sget v0, Lcom/guochao/faceshow/signin/R$id;->viewpager:I

    .line 20
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v13, :cond_0

    .line 21
    sget v0, Lcom/guochao/faceshow/signin/R$id;->viewpager_single:I

    .line 22
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v14, :cond_0

    .line 23
    new-instance v0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Space;Lcom/guochao/faceshow/aaspring/views/TabLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/duolingo/open/rtlviewpager/RtlViewPager;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;
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
    sget v0, Lcom/guochao/faceshow/signin/R$layout;->activity_user_signin_center:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
