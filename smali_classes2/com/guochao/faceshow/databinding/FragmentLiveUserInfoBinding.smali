.class public final Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final closeRoom:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dividerView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final focusBtn:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivMotion:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveFbAndLikeLy:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveFbCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveLikeCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llFb:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llLikeCount:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameLy:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineCountText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rankMulti:Lcom/guochao/faceshow/databinding/LayoutRankListBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rankSingle:Lcom/guochao/faceshow/databinding/LayoutRankListBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareRoom:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleHeadBg:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topInfo:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topInfoClick:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userInfoLay:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userInfoRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/databinding/LayoutRankListBinding;Lcom/guochao/faceshow/databinding/LayoutRankListBinding;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/guochao/faceshow/databinding/LayoutRankListBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/guochao/faceshow/databinding/LayoutRankListBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->closeRoom:Landroid/widget/ImageView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->dividerView:Landroid/view/View;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->focusBtn:Landroid/widget/ImageView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->ivMotion:Landroid/widget/ImageView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->liveFbAndLikeLy:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->liveFbCount:Landroid/widget/TextView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->liveLikeCount:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->llFb:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->llLikeCount:Landroid/widget/LinearLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->masterName:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->nameLy:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->onlineCountText:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->rankMulti:Lcom/guochao/faceshow/databinding/LayoutRankListBinding;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->rankSingle:Lcom/guochao/faceshow/databinding/LayoutRankListBinding;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->shareRoom:Landroid/widget/ImageView;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->titleHeadBg:Landroid/widget/LinearLayout;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->topInfo:Landroid/widget/LinearLayout;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->topInfoClick:Landroid/widget/FrameLayout;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->userInfoLay:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->userInfoRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;
    .locals 27
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a00fd

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0213

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a02dc

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const v1, 0x7f0a0432

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0430

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v9, :cond_0

    const v1, 0x7f0a05bf

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a068b

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a068c

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a06a2

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a06cc

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a06d9

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0746

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a07ea

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a083c

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a091e

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    invoke-static {v2}, Lcom/guochao/faceshow/databinding/LayoutRankListBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutRankListBinding;

    move-result-object v19

    const v1, 0x7f0a091f

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    invoke-static {v2}, Lcom/guochao/faceshow/databinding/LayoutRankListBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutRankListBinding;

    move-result-object v20

    const v1, 0x7f0a0a6c

    .line 19
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a0bb9

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0bd3

    .line 21
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/LinearLayout;

    if-eqz v23, :cond_0

    const v1, 0x7f0a0bd4

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/FrameLayout;

    if-eqz v24, :cond_0

    const v1, 0x7f0a0db3

    .line 23
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/RelativeLayout;

    if-eqz v25, :cond_0

    const v1, 0x7f0a0db7

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    if-eqz v26, :cond_0

    .line 25
    new-instance v1, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v26}, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/databinding/LayoutRankListBinding;Lcom/guochao/faceshow/databinding/LayoutRankListBinding;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;
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

    const v0, 0x7f0d01b1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/FragmentLiveUserInfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
