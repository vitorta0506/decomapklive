.class public final Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bgView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final buyLoading:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final buyNow:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dressImage:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dressName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dressTag:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flHead:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final specContent:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->bgView:Landroid/view/View;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->buyLoading:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->buyNow:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->contentLay:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->dressImage:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->dressName:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->dressTag:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->flHead:Landroid/widget/FrameLayout;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->specContent:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00fd

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0138

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f0a01a2

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01a3

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a025b

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02ee

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a02ef

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a02f1

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0418

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0abb

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    if-eqz v13, :cond_0

    .line 11
    new-instance v0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;-><init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;
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

    const v0, 0x7f0d02bd

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutDialogBuyDressBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
