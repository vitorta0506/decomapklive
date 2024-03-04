.class public final Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final address:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final addressArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final addressIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentCountTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expand:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expandContent:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconFocus:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconPrivateLock:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconPublishFail:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final isFriend:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final likeArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final likeCountTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final likeImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final likeImageViewBg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final likeTips:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final likeUserListArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mediaArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final more:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final time:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeAddrArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
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
    .param p11    # Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p26    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p27    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p28    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->address:Landroid/widget/TextView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->addressArea:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->addressIcon:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->btnArea:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->commentArea:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->commentCountTv:Landroid/widget/TextView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->contentLayout:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->expand:Landroid/widget/TextView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->expandContent:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->iconFocus:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->iconPrivateLock:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->iconPublishFail:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->isFriend:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->likeArea:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->likeCountTv:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->likeImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->likeImageViewBg:Landroid/widget/ImageView;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->likeTips:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->likeUserListArea:Landroid/widget/LinearLayout;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->mediaArea:Landroid/widget/FrameLayout;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->more:Landroid/widget/ImageView;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->textContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->time:Landroid/widget/TextView;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->timeAddrArea:Landroid/widget/LinearLayout;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->userName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;
    .locals 32
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a0088

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a008a

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a008b

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a00fd

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a017f

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0228

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a022a

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a025c

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a03aa

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a03ad

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0430

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v15, :cond_0

    const v1, 0x7f0a04f9

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0503

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0504

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0568

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0651

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/LinearLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0a0653

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a0654

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0655

    .line 19
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/ImageView;

    if-eqz v23, :cond_0

    const v1, 0x7f0a0656

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    const v1, 0x7f0a0657

    .line 21
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/LinearLayout;

    if-eqz v25, :cond_0

    const v1, 0x7f0a0764

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/FrameLayout;

    if-eqz v26, :cond_0

    const v1, 0x7f0a0799

    .line 23
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/ImageView;

    if-eqz v27, :cond_0

    const v1, 0x7f0a0b6d

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    if-eqz v28, :cond_0

    const v1, 0x7f0a0b96

    .line 25
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    if-eqz v29, :cond_0

    const v1, 0x7f0a0b9c

    .line 26
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/LinearLayout;

    if-eqz v30, :cond_0

    const v1, 0x7f0a0dc5

    .line 27
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/TextView;

    if-eqz v31, :cond_0

    .line 28
    new-instance v1, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v31}, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;Lcom/guochao/faceshow/views/SvgaImageViewV2;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v1

    .line 29
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;
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

    const v0, 0x7f0d037b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ListItemFriendCircleBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
