.class public final Lcom/guochao/faceshow/databinding/DialogInviteBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnConfirm:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final closeIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final confirmTip:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutConfirm:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabLay:Landroid/widget/LinearLayout;
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
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/TabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->btnConfirm:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->closeIV:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->confirmTip:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->layoutConfirm:Landroid/widget/LinearLayout;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->tabLay:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/DialogInviteBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0186

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a020e

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0247

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0624

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0b20

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0b26

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0e2e

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    if-eqz v10, :cond_0

    .line 8
    new-instance v0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;

    move-object v3, p0

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/guochao/faceshow/databinding/DialogInviteBinding;-><init>(Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/TabLayout;Lcom/duolingo/open/rtlviewpager/RtlViewPager;)V

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/DialogInviteBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/DialogInviteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/DialogInviteBinding;
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

    const v0, 0x7f0d012a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/DialogInviteBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->getRoot()Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/DialogInviteBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    return-object v0
.end method
