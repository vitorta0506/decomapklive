.class public final Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final duration:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivThumb:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final play:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoContent:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1    # Landroidx/cardview/widget/CardView;
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
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->duration:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->ivThumb:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->play:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->progress:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->progressIv:Landroid/widget/ImageView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->videoContent:Landroidx/cardview/widget/CardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a02f6

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a05e1

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a08a0

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a08c9

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a08d1

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 6
    move-object v9, p0

    check-cast v9, Landroidx/cardview/widget/CardView;

    .line 7
    new-instance p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v9}, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;)V

    return-object p0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;
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

    const v0, 0x7f0d0353

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutVideoMessageSelfBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
