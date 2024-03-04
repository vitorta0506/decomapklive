.class public final Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarBg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarPedant:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarVipPedant:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flAnim:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flag:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivAnim:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineState:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
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
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatarBg:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatarPedant:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatarVipPedant:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->flAnim:Landroid/widget/FrameLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->flag:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->ivAnim:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->onlineState:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/lib_core/R$id;->avatar:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/lib_core/R$id;->avatar_bg:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/lib_core/R$id;->avatar_pedant:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/lib_core/R$id;->avatar_vip_pedant:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/lib_core/R$id;->fl_anim:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/lib_core/R$id;->flag:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/lib_core/R$id;->iv_anim:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/lib_core/R$id;->online_state:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 17
    new-instance v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;
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

    .line 2
    sget v0, Lcom/guochao/lib_core/R$layout;->layout_head_portrait:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->bind(Landroid/view/View;)Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
