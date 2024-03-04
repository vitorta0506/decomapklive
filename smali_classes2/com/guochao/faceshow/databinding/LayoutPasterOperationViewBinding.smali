.class public final Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final SingleTouchView:Lcom/guochao/faceshow/views/PasterOperationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/guochao/faceshow/views/PasterOperationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/views/PasterOperationView;Lcom/guochao/faceshow/views/PasterOperationView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/views/PasterOperationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/views/PasterOperationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;->rootView:Lcom/guochao/faceshow/views/PasterOperationView;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;->SingleTouchView:Lcom/guochao/faceshow/views/PasterOperationView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "rootView"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/guochao/faceshow/views/PasterOperationView;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;

    invoke-direct {v0, p0, p0}, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;-><init>(Lcom/guochao/faceshow/views/PasterOperationView;Lcom/guochao/faceshow/views/PasterOperationView;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;
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

    const v0, 0x7f0d0314

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;->getRoot()Lcom/guochao/faceshow/views/PasterOperationView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/guochao/faceshow/views/PasterOperationView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutPasterOperationViewBinding;->rootView:Lcom/guochao/faceshow/views/PasterOperationView;

    return-object v0
.end method
