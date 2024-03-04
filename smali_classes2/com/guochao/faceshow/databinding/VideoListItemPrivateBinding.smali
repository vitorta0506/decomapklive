.class public final Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final animViewLay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnLl:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final comments:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentsNum:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final danmuArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyLl:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gift:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final isFeature:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final more:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicBg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicRl:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final periscopeLayout:Lcom/guochao/faceshow/views/Love;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playBt:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final praiseNum:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchFriend:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareNum:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tips:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvFeature:Lcom/guochao/faceshow/aaspring/views/HollowTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvLl:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final txCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoCover:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoProgress:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final zanArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/NormalCircleImageView;Lcom/guochao/faceshow/views/Love;Landroid/widget/ImageButton;Landroid/widget/TextView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/HollowTextView;Landroid/widget/LinearLayout;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
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
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/guochao/faceshow/views/NormalCircleImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/guochao/faceshow/views/Love;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Lcom/guochao/faceshow/aaspring/views/HollowTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Lcom/tencent/rtmp/ui/TXCloudVideoView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p26    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p27    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->animViewLay:Landroid/widget/FrameLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->btnLl:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->comments:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->commentsNum:Landroid/widget/TextView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->danmuArea:Landroid/widget/FrameLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->emptyLl:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->gift:Landroid/widget/ImageView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->isFeature:Landroidx/cardview/widget/CardView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->itemLayout:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->more:Landroid/widget/ImageView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->musicArea:Landroid/widget/FrameLayout;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->musicBg:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->musicRl:Lcom/guochao/faceshow/views/NormalCircleImageView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->periscopeLayout:Lcom/guochao/faceshow/views/Love;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->playBt:Landroid/widget/ImageButton;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->praiseNum:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->sVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->searchFriend:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->shareNum:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->tips:Landroid/widget/LinearLayout;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->tvFeature:Lcom/guochao/faceshow/aaspring/views/HollowTextView;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->tvLl:Landroid/widget/LinearLayout;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->txCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->videoCover:Landroid/widget/ImageView;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->videoProgress:Landroid/widget/ProgressBar;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->zanArea:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;
    .locals 31
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

    const v1, 0x7f0a018e

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a022b

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a022c

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0293

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a032f

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0471

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0567

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/cardview/widget/CardView;

    if-eqz v12, :cond_0

    .line 9
    move-object v13, v0

    check-cast v13, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0799

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a07bc

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a07bd

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a07c4

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/guochao/faceshow/views/NormalCircleImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a087c

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/guochao/faceshow/views/Love;

    if-eqz v18, :cond_0

    const v1, 0x7f0a08a1

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageButton;

    if-eqz v19, :cond_0

    const v1, 0x7f0a08b1

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a09f1

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a0a19

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0a6b

    .line 19
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    const v1, 0x7f0a0bac

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/LinearLayout;

    if-eqz v24, :cond_0

    const v1, 0x7f0a0c88

    .line 21
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/guochao/faceshow/aaspring/views/HollowTextView;

    if-eqz v25, :cond_0

    const v1, 0x7f0a0cb4

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/LinearLayout;

    if-eqz v26, :cond_0

    const v1, 0x7f0a0d5e

    .line 23
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v27, :cond_0

    const v1, 0x7f0a0de1

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/ImageView;

    if-eqz v28, :cond_0

    const v1, 0x7f0a0ded

    .line 25
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/ProgressBar;

    if-eqz v29, :cond_0

    const v1, 0x7f0a0e88

    .line 26
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/LinearLayout;

    if-eqz v30, :cond_0

    .line 27
    new-instance v0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;

    move-object v3, v0

    move-object v4, v13

    invoke-direct/range {v3 .. v30}, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/guochao/faceshow/views/NormalCircleImageView;Lcom/guochao/faceshow/views/Love;Landroid/widget/ImageButton;Landroid/widget/TextView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/HollowTextView;Landroid/widget/LinearLayout;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 28
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;
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

    const v0, 0x7f0d0463

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/VideoListItemPrivateBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
