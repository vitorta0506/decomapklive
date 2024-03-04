.class public final Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final animViewLay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cancel:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatController:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatPrompt:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final floating:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final follow:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final keyboardSpace:Landroid/widget/Space;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainContent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stbpView:Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/Space;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->animViewLay:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->cancel:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->chatContent:Landroid/widget/FrameLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->chatController:Landroid/widget/FrameLayout;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->chatPrompt:Landroidx/cardview/widget/CardView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->content:Landroid/widget/FrameLayout;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->floating:Landroid/widget/FrameLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->follow:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->keyboardSpace:Landroid/widget/Space;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->mainContent:Landroid/widget/LinearLayout;

    .line 13
    iput-object p12, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iput-object p13, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->stbpView:Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a00af

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a01af

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a01e2

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a01e3

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01e8

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/cardview/widget/CardView;

    if-eqz v9, :cond_0

    .line 6
    move-object v10, v0

    check-cast v10, Landroid/widget/FrameLayout;

    const v1, 0x7f0a042e

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0437

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0608

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Space;

    if-eqz v13, :cond_0

    const v1, 0x7f0a073a

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a095c

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0ae4

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;

    if-eqz v16, :cond_0

    .line 13
    new-instance v0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;

    move-object v3, v0

    move-object v4, v10

    invoke-direct/range {v3 .. v16}, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/aaspring/views/StatusBarPlaceHolderView;)V

    return-object v0

    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;
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

    const v0, 0x7f0d0082

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ActivityNewChatBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
