.class public final Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar:Lcom/guochao/faceshow/aaspring/views/BorderImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardBg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flag:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gender:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final infoArea:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mask:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/BorderImageView;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/NormalCircleImageView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/BorderImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/views/NormalCircleImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/BorderImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->cardBg:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->flag:Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->gender:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->infoArea:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->mask:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->nickname:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00f0

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/BorderImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01ba

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0424

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/guochao/faceshow/views/NormalCircleImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0463

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a054b

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0741

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a080d

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 8
    new-instance v0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;-><init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/BorderImageView;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/NormalCircleImageView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;
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

    const v0, 0x7f0d0307

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutLuckyNumberBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
