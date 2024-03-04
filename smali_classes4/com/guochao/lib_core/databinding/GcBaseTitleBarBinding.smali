.class public final Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final gcTitleBar:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gcToolBar:Lcom/google/android/material/appbar/MaterialToolbar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarHolder:Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/MaterialToolbar;Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/appbar/MaterialToolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->gcTitleBar:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->gcToolBar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 5
    iput-object p4, p0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->statusBarHolder:Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    sget v1, Lcom/guochao/lib_core/R$id;->gc_tool_bar:I

    .line 3
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    if-eqz v2, :cond_0

    .line 4
    sget v1, Lcom/guochao/lib_core/R$id;->status_bar_holder:I

    .line 5
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;

    if-eqz v3, :cond_0

    .line 6
    new-instance p0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/MaterialToolbar;Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;)V

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;
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

    .line 2
    sget v0, Lcom/guochao/lib_core/R$layout;->gc_base_title_bar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->bind(Landroid/view/View;)Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
