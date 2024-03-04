.class public final Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final beauty:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final beautyTips:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final filterDialog:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final genderTips:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final history:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mini:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final slidUpTips:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final slidUpTipsTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svgaHand:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/views/SvgaImageViewV2;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
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
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->beauty:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->beautyTips:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->filterDialog:Landroid/widget/FrameLayout;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->genderTips:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->history:Landroid/widget/ImageView;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->icon:Landroid/widget/ImageView;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->mini:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->slidUpTips:Landroid/widget/LinearLayout;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->slidUpTipsTv:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->svgaHand:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->beauty:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->beauty_tips:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->filter_dialog:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->gender_tips:I

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->history:I

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->icon:I

    .line 12
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->mini:I

    .line 14
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->slid_up_tips:I

    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->slid_up_tips_tv:I

    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 19
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->svga_hand:I

    .line 20
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v13, :cond_0

    .line 21
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/views/SvgaImageViewV2;)V

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;
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
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$layout;->fragment_f2f_prepare:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
