.class public final Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llTitle:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playBt:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playerview:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;->llTitle:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;->playBt:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;->playerview:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a06f9

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f0a08a1

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a08a9

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v3, :cond_0

    .line 4
    new-instance v0, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;
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

    const v0, 0x7f0d0095

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityPlayVideoBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
