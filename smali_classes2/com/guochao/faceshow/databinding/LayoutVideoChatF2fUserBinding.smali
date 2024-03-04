.class public final Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ageSexView:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final focus:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final head:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/views/LevelView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->ageSexView:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->focus:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->head:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->nickName:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a009e

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a042f

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a04bf

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a064a

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a080a

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0e13

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    if-eqz v9, :cond_0

    .line 7
    new-instance v0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d0352

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutVideoChatF2fUserBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
