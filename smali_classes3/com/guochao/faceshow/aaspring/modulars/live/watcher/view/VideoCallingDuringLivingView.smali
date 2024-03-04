.class public final Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;",
        "",
        "viewStub",
        "Landroid/view/ViewStub;",
        "liveRoomFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;",
        "viewModel",
        "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;",
        "(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;)V",
        "callingBtn",
        "Lcom/guochao/faceshow/views/SvgaImageViewV2;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;",
        "bindCallingBtn",
        "",
        "liveChatFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "hide",
        "show",
        "roomItemData",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "startCallActivity",
        "model",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final liveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewBinding:Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;

.field private final viewModel:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewStub:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;)V
    .locals 1
    .param p1    # Landroid/view/ViewStub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "viewStub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveRoomFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewStub:Landroid/view/ViewStub;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->liveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->getLastCallingRoomItemData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lj9/b;

    invoke-direct {v0, p0}, Lj9/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->getLastCallStatusRoomItemData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p3, Lj9/c;

    invoke-direct {p3, p0}, Lj9/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;->getRoomItemData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->show(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->hide()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->liveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->startCallActivity(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->liveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->liveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->c0(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/player/GCLivePlayer;->freezeAllPlayers()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/views/SvgaImageViewV2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->bindCallingBtn$lambda-7(Lcom/guochao/faceshow/views/SvgaImageViewV2;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->show$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Landroid/view/View;)V

    return-void
.end method

.method private static final bindCallingBtn$lambda-7(Lcom/guochao/faceshow/views/SvgaImageViewV2;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$callingBtn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    const p1, 0x7f0f01c4

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->_init_$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->_init_$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;)V

    return-void
.end method

.method private final hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "viewBinding"

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    const v1, 0x7f0f01c4

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method private final show(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;

    move-result-object v0

    const-string v2, "bind(viewStub.inflate())"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->cancelBtn:Landroid/widget/LinearLayout;

    new-instance v3, Lj9/a;

    invoke-direct {v3, p0}, Lj9/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->liveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800033

    .line 6
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;

    if-nez v0, :cond_1

    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;->avatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p1, :cond_2

    const v0, 0x7f110039

    .line 13
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_2
    return-void
.end method

.method private static final show$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->endLastCalling(I)V

    :cond_0
    return-void
.end method

.method private final startCallActivity(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->getType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->getRoomItemData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->getMessageModel()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->setFromLiveRoom(Z)V

    .line 6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_1
    invoke-static {p1, v1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->A0(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method


# virtual methods
.method public final bindCallingBtn(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/views/SvgaImageViewV2;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "liveChatFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingBtn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->getHasCallingPermission()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lj9/d;

    invoke-direct {v1, p2}, Lj9/d;-><init>(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method
