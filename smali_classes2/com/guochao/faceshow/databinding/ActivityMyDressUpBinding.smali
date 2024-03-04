.class public final Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final floatTitleBack:Lcom/guochao/faceshow/databinding/BaseTitleBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layContent:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/databinding/BaseTitleBinding;Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/databinding/BaseTitleBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/RelativeLayout;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->floatTitleBack:Lcom/guochao/faceshow/databinding/BaseTitleBinding;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->layContent:Landroid/widget/RelativeLayout;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a042c

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/databinding/BaseTitleBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/BaseTitleBinding;

    move-result-object v4

    .line 3
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0b26

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0e2e

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v7, :cond_0

    .line 6
    new-instance p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/databinding/BaseTitleBinding;Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;
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

    const v0, 0x7f0d007c

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityMyDressUpBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
