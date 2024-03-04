.class public final Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addr:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar:Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final beauty:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final countryFlag:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final extraInfoArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loadingAnim:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final matchedInfoArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final matchingArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mini:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radar:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tips:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;
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
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->addr:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->avatar:Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->beauty:Landroid/widget/ImageView;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->countryFlag:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->extraInfoArea:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->loadingAnim:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 9
    iput-object p8, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchedInfoArea:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchingArea:Landroid/widget/LinearLayout;

    .line 11
    iput-object p10, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->mini:Landroid/widget/ImageView;

    .line 12
    iput-object p11, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->nickName:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->radar:Landroid/widget/ImageView;

    .line 14
    iput-object p13, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->tips:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->addr:I

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->avatar:I

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->beauty:I

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->country_flag:I

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->extra_info_area:I

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->loading_anim:I

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->matched_info_area:I

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->matching_area:I

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->mini:I

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->nick_name:I

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->radar:I

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$id;->tips:I

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v1

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;
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
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$layout;->fragment_f2f_matching:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
