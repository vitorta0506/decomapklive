.class public final Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomButtonArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final faceBookShare:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLive:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLiveBeautyFilterBtn:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLiveEditTitle:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLiveNextBtn:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLivePic:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLivePicTips:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final launchLiveSwitchCameraBtn:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveDynamicToggle:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveLaunchDice:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final spaceArea:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchPrivateLive:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncDynamicDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final syncDynamicLay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final touchView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final twitterShare:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voiceRoomBack:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final weiboShare:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final weichatShare:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final weightIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/cardview/widget/CardView;
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
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->bottomButtonArea:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->cardView:Landroidx/cardview/widget/CardView;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->faceBookShare:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLive:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLiveBeautyFilterBtn:Landroid/widget/ImageView;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLiveEditTitle:Landroid/widget/EditText;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLiveNextBtn:Landroid/widget/TextView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLivePic:Landroid/widget/ImageView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLivePicTips:Landroid/widget/ImageView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->launchLiveSwitchCameraBtn:Landroid/widget/ImageView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->liveDynamicToggle:Landroid/widget/ImageView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->liveLaunchDice:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->shareArea:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->shareDivider:Landroid/view/View;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->spaceArea:Landroid/widget/FrameLayout;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->switchPrivateLive:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->syncDynamicDivider:Landroid/view/View;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->syncDynamicLay:Landroid/widget/LinearLayout;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->touchView:Landroid/view/View;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->twitterShare:Landroid/widget/ImageView;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->voiceRoomBack:Landroid/widget/ImageView;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->weiboShare:Landroid/widget/ImageView;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->weichatShare:Landroid/widget/ImageView;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->weightIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;
    .locals 29
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a0153

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a01bb

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a03bb

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 4
    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0612

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0613

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0614

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0615

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0616

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0617

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0687

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a06a1

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0a66

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0a67

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_0

    const v1, 0x7f0a0ab7

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/FrameLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0b0e

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a0b10

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    const v1, 0x7f0a0b11

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0be2

    .line 19
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    const v1, 0x7f0a0d5d

    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/ImageView;

    if-eqz v24, :cond_0

    const v1, 0x7f0a0e20

    .line 21
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/ImageView;

    if-eqz v25, :cond_0

    const v1, 0x7f0a0e46

    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/ImageView;

    if-eqz v26, :cond_0

    const v1, 0x7f0a0e47

    .line 23
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/ImageView;

    if-eqz v27, :cond_0

    const v1, 0x7f0a0e49

    .line 24
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/ImageView;

    if-eqz v28, :cond_0

    .line 25
    new-instance v0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;

    move-object v3, v0

    move-object v4, v8

    invoke-direct/range {v3 .. v28}, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;
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
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;
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

    const v0, 0x7f0d02f0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LayoutLaunchLiveBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
