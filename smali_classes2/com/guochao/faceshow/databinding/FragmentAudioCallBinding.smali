.class public final Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final animView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bgBlurImage:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final blurImage:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final callTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusWight:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final trtcHangUp:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userInfoLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
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
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->animView:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->bgBlurImage:Landroid/view/View;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->blurImage:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->callTime:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->chatArea:Landroid/widget/FrameLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->statusWight:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->trtcHangUp:Landroid/widget/ImageView;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->userInfoLayout:Landroid/widget/LinearLayout;

    .line 13
    iput-object p12, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->userName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;
    .locals 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a00ae

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a012c

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f0a014e

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01aa

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a01e1

    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0a07

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0ae3

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0bf3

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0d86

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0db4

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v0, 0x7f0a0dc5

    .line 11
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 12
    new-instance v0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;
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

    const v0, 0x7f0d015d

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentAudioCallBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
