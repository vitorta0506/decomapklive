.class public final Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adsAndActivity:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final adsAndGiftBox:Lcom/guochao/faceshow/aaspring/views/InterceptTouchLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final adsClose:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final adsLay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final adsView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnInvite:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final firstRechargeCloseVoice:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final firstRechargeLayVoice:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final firstRechargeVoice:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final floatInfoRecyclerViewContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final musicActivityLive:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvRechargeDowntownTimeVoice:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userInfoFragment:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoInfoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/InterceptTouchLinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/view/ViewStub;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/views/InterceptTouchLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
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
    .param p9    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->rootView:Landroid/view/View;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->adsAndActivity:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->adsAndGiftBox:Lcom/guochao/faceshow/aaspring/views/InterceptTouchLinearLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->adsClose:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->adsLay:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->adsView:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->btnInvite:Landroid/widget/ImageView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->firstRechargeCloseVoice:Landroid/widget/ImageView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->firstRechargeLayVoice:Landroid/widget/FrameLayout;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->firstRechargeVoice:Landroid/widget/ImageView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->floatInfoRecyclerViewContainer:Landroid/widget/FrameLayout;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->musicActivityLive:Landroid/view/ViewStub;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->tvRechargeDowntownTimeVoice:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->userInfoFragment:Landroid/widget/FrameLayout;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->videoInfoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;
    .locals 18
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v1, p0

    const v0, 0x7f0a0090

    .line 1
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0091

    .line 2
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/InterceptTouchLinearLayout;

    if-eqz v3, :cond_0

    const v0, 0x7f0a0093

    .line 3
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0096

    .line 4
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a009d

    .line 5
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a018b

    .line 6
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a03e9

    .line 7
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a03ed

    .line 8
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a03ef

    .line 9
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0427

    .line 10
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0674

    .line 11
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a07bb

    .line 12
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    if-eqz v13, :cond_0

    const v0, 0x7f0a0ce0

    .line 13
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v0, 0x7f0a0dad

    .line 14
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_0

    const v0, 0x7f0a0de5

    .line 15
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz v16, :cond_0

    .line 16
    new-instance v17, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/InterceptTouchLinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/view/ViewStub;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    return-object v17

    .line 17
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0d02f8

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutLiveRoomCommonBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
