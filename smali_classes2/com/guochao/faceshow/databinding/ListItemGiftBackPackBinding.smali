.class public final Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final animViewLay:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final count:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final faceIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final giftDate:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final giftName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final giftPrice:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lock:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lockTips:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lucky:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svga:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
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
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->animViewLay:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->count:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->faceIV:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->giftDate:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->giftName:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->giftPrice:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->icon:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->lock:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->lockTips:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->lucky:Landroid/widget/ImageView;

    .line 13
    iput-object p12, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->svga:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;
    .locals 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00af

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0269

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a03ba

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a047e

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0485

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a048a

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a04ef

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0715

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0719

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a072a

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a0af5

    .line 11
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v14, :cond_0

    .line 12
    new-instance v0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;

    move-object v3, p0

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;-><init>(Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;
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

    const v0, 0x7f0d037d

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->getRoot()Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ListItemGiftBackPackBinding;->rootView:Lcom/guochao/faceshow/aaspring/views/GiftItemFrameLayout;

    return-object v0
.end method
