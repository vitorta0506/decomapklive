.class public final Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottom:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnAtPeople:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnSend:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cancel:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final input:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final space:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
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
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->bottom:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->btnAtPeople:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->btnSend:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->cancel:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->commentCount:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->input:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->mainLayout:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->space:Landroid/view/View;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->title:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a0151

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0180

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a019a

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01af

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0229

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a054f

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    if-eqz v9, :cond_0

    .line 7
    move-object v10, p0

    check-cast v10, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0ab5

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    const v0, 0x7f0a0bb2

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 10
    new-instance p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v12}, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;)V

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;
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

    const v0, 0x7f0d017c

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentDynamicCommentBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
