.class public final Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final emptyView:Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final include:Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutLocation:Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->emptyView:Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->include:Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->layoutLocation:Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0332

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;

    move-result-object v0

    const v1, 0x7f0a053c

    .line 3
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;

    move-result-object v1

    const v2, 0x7f0a0627

    .line 5
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v3}, Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;-><init>(Landroid/widget/LinearLayout;Lcom/guochao/faceshow/databinding/LayoutPeopleNearbyEmptyViewBinding;Lcom/guochao/faceshow/databinding/FragmentBaseRecyclerViewBinding;Lcom/guochao/faceshow/databinding/LayoutLocationPermissionBinding;)V

    return-object v3

    :cond_0
    const v0, 0x7f0a0627

    goto :goto_0

    :cond_1
    const v0, 0x7f0a053c

    .line 8
    :cond_2
    :goto_0
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;
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

    const v0, 0x7f0d008c

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityPeopleNearbyBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method