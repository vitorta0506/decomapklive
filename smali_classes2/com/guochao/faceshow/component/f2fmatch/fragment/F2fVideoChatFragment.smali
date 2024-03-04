.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010.\u001a\u00020/H\u0002J\u0006\u00100\u001a\u00020/J\u0012\u00101\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u00010\u001cH\u0002J\u0018\u00103\u001a\u00020/2\u0006\u00104\u001a\u00020\n2\u0008\u0008\u0002\u00105\u001a\u00020\u0013J\u001a\u00106\u001a\u00020/2\u0006\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:H\u0014J\u0008\u0010;\u001a\u00020/H\u0016J\u0010\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020\u0013H\u0016J\u0016\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006J\u0012\u0010A\u001a\u00020/2\u0008\u0010B\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010C\u001a\u00020/2\u0006\u0010D\u001a\u00020\u0013J\u000e\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u0006J\u0006\u0010G\u001a\u00020/J\u000e\u0010H\u001a\u00020/2\u0006\u00104\u001a\u00020\nJ\u000e\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020KJ\u0008\u0010L\u001a\u00020/H\u0002J\u0008\u0010M\u001a\u00020/H\u0002J\u0008\u0010N\u001a\u00020/H\u0002J\u0010\u0010O\u001a\u00020/2\u0008\u0008\u0002\u0010P\u001a\u00020\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008\u001f\u0010 R$\u0010#\u001a\u00020$8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008%\u0010\u0004\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001b\u0010*\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\"\u001a\u0004\u0008+\u0010,\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "()V",
        "currentGuass",
        "",
        "f2fChatFragmentBase",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;",
        "f2fMatchRoomInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "getF2fMatchRoomInfo",
        "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "setF2fMatchRoomInfo",
        "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V",
        "focusTips",
        "Ljava/lang/Runnable;",
        "giftTips",
        "guassRemove",
        "",
        "handler",
        "Landroid/os/Handler;",
        "matchUserIsInSmallPosition",
        "getMatchUserIsInSmallPosition",
        "()Z",
        "setMatchUserIsInSmallPosition",
        "(Z)V",
        "popupWindowFocus",
        "Landroid/widget/PopupWindow;",
        "pusherModel",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "getPusherModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "pusherModel$delegate",
        "Lkotlin/Lazy;",
        "viewBinding",
        "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "viewModel$delegate",
        "checkGuass",
        "",
        "detectNoFaceOnScreen",
        "dismiss",
        "popupWindow",
        "focusSomebody",
        "gcUser",
        "showFocusMessage",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onHiddenChanged",
        "hidden",
        "onKeyboardHeightChanged",
        "height",
        "orientation",
        "onModelUpdate",
        "model",
        "playerViewMoveToMiniSize",
        "miniSize",
        "receiveGuass",
        "i",
        "removeChat",
        "removeGuass",
        "setCurrentUserInfo",
        "f2fHeartBeatModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
        "showFocusTips",
        "showGiftTips",
        "startAudioRecord",
        "stopAudioRecord",
        "cancel",
        "component_f2f_match_release"
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
.field private currentGuass:I

.field private f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final focusTips:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final giftTips:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private guassRemove:Z

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private matchUserIsInSmallPosition:Z

.field private popupWindowFocus:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pusherModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$special$$inlined$lazyGlobalViewModel$default$2;

    invoke-direct {v1, v0, v4, v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$special$$inlined$lazyGlobalViewModel$default$2;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v2, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->pusherModel$delegate:Lkotlin/Lazy;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->handler:Landroid/os/Handler;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/y;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/y;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->giftTips:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/p;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->focusTips:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-12(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->giftTips$lambda-23(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->focusTips$lambda-24(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    return-void
.end method

.method public static synthetic V1(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-6(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X1(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->setCurrentUserInfo$lambda-15$lambda-14(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic Y1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-9(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-7(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a2(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->initView$lambda-13$lambda-11(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getF2fChatFragmentBase$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    return-object p0
.end method

.method private final checkGuass()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->matchUserIsInSmallPosition:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->guassRemove:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->currentGuass:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final dismiss(Landroid/widget/PopupWindow;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic focusSomebody$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V

    return-void
.end method

.method private static final focusTips$lambda-24(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->showFocusTips()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final giftTips$lambda-23(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->showGiftTips()V

    return-void
.end method

.method private static final initView$lambda-13$lambda-1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    const/4 p1, 0x0

    .line 2
    invoke-interface {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->exitCurrentRoom(Z)V

    .line 3
    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->cancelMatchAndBackToPrepare()V

    return-void
.end method

.method private static final initView$lambda-13$lambda-11(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->guassRemove:Z

    .line 3
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassArea:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->removeCurrentGuass(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda-13$lambda-12(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 2

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, v0, v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->stopAudioRecord$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;ZILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object p0, p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->enterInput(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p2, "voice_to_text_btn_click"

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 6
    invoke-direct {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->startAudioRecord()V

    return-void
.end method

.method private static final initView$lambda-13$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->showPendantDialog()V

    return-void
.end method

.method private static final initView$lambda-13$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoardNow(Landroid/widget/EditText;)V

    .line 4
    iget-object p0, p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->enterInput(Z)V

    .line 5
    :cond_1
    iget-object p0, p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->awakenChatRecyclerView()V

    :cond_2
    return-void
.end method

.method private static final initView$lambda-13$lambda-6(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->sendText(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private static final initView$lambda-13$lambda-7(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->showGiftDialog()V

    .line 2
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_F2F_SEND_GIFT"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->giftTips:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private static final initView$lambda-13$lambda-9(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->report(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    :cond_0
    return-void
.end method

.method private static final setCurrentUserInfo$lambda-15$lambda-14(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final showFocusTips()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->popupWindowFocus:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->popupWindowFocus:Landroid/widget/PopupWindow;

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "focus"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9
    sget v4, Lcom/guochao/faceshow/component/f2fmatch/R$drawable;->gift_top_remind_1:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v4, 0x800003

    .line 10
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 11
    iget-object v5, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 12
    sget v5, Lcom/guochao/faceshow/component/f2fmatch/R$string;->focus_tips_famale:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 13
    :cond_3
    sget v5, Lcom/guochao/faceshow/component/f2fmatch/R$string;->focus_tips_male:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/guochao/lib_base/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 16
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/high16 v2, 0x430c0000    # 140.0f

    .line 18
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v2, -0x2

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 22
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->j()Z

    move-result v2

    const/high16 v5, 0x40a00000    # 5.0f

    if-eqz v2, :cond_4

    .line 23
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 24
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    neg-int v2, v2

    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_2
    return-void
.end method

.method private final showGiftTips()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->giftTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$string;->gift_tips_famale:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3
    :cond_1
    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$string;->gift_tips_male:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->giftTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final startAudioRecord()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$startAudioRecord$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startAudioRecord(Lkotlin/jvm/functions/Function1;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->inputMessage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->sendSpeechToTextResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    :cond_0
    return-void
.end method

.method public static synthetic stopAudioRecord$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->stopAudioRecord(Z)V

    return-void
.end method


# virtual methods
.method public final detectNoFaceOnScreen()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->detectNoFaceOnScreen()V

    :cond_0
    return-void
.end method

.method public final focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "focus"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->popupWindowFocus:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->dismiss(Landroid/widget/PopupWindow;)V

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string p2, "KEY_F2F_FOCUS_TIPS"

    invoke-virtual {p1, p2}, Lja/a;->e(Ljava/lang/String;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->popupWindowFocus:Landroid/widget/PopupWindow;

    :cond_3
    return-void
.end method

.method public final getF2fMatchRoomInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-object v0
.end method

.method public final getMatchUserIsInSmallPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->matchUserIsInSmallPosition:Z

    return v0
.end method

.method public final getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->pusherModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->exit:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/t;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/t;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->btnSend:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$initView$1$2;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$initView$1$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    const-string v0, "liveBottomEditText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$initView$lambda-13$$inlined$doAfterTextChanged$1;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$initView$lambda-13$$inlined$doAfterTextChanged$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->extraInfoArea:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    .line 11
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 12
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->beauty:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/s;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/s;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->inputMessage:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/o;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/o;-><init>(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->btnSend:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/r;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/r;-><init>(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->gift:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/v;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/v;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->gift:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$raw;->gift_new:I

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 19
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->report:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/u;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/u;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->remove:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/w;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/w;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/q;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/q;-><init>(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->popupWindowFocus:Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->dismiss(Landroid/widget/PopupWindow;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->popupWindowFocus:Landroid/widget/PopupWindow;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    .line 8
    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 11
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onKeyboardHeightChanged(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->message:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    .line 3
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4
    iget-object v4, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/guochao/faceshow/component/f2fmatch/R$dimen;->f2f_bottom_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v4, p1, v4

    .line 6
    iget-object v5, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->menus:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 7
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    iget-object v4, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object v4, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->message:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 13
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->messageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-gtz p1, :cond_1

    .line 15
    iget-object p1, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->spaceChat:Landroid/widget/Space;

    invoke-virtual {p1, v3}, Landroid/widget/Space;->setVisibility(I)V

    const/4 p1, 0x0

    .line 16
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 p1, 0x43960000    # 300.0f

    .line 17
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->spaceChat:Landroid/widget/Space;

    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 20
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    return-void
.end method

.method public bridge synthetic onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->onModelUpdate(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final playerViewMoveToMiniSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->matchUserIsInSmallPosition:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->checkGuass()V

    return-void
.end method

.method public final receiveGuass(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->guassRemove:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->currentGuass:I

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->checkGuass()V

    return-void
.end method

.method public final removeChat()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public final removeGuass(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->setRemoveGuass(Z)V

    :cond_1
    return-void
.end method

.method public final setCurrentUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->guassRemove:Z

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->matchUserIsInSmallPosition:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->setRemoveGuass(Z)V

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    const-string v2, "KEY_F2F_TIPS_WHEN_CHATTING"

    .line 5
    invoke-virtual {v1, v2}, Lja/a;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->chatTips:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/fragment/x;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/x;-><init>(Landroid/widget/ImageView;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->chatTips:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    .line 12
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v1, v6}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment$setCurrentUserInfo$2$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->inputMessage:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 15
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v2

    const-string v4, "KEY_F2F_SEND_GIFT"

    .line 16
    invoke-virtual {v2, v4}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->giftTips:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v2

    const-string v4, "KEY_F2F_FOCUS_TIPS"

    .line 19
    invoke-virtual {v2, v4}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->focusTips:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->guassTips:Landroid/widget/TextView;

    sget v4, Lcom/guochao/faceshow/component/f2fmatch/R$string;->guass_tips:I

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x300c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x300d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->extraInfoArea:Landroid/widget/LinearLayout;

    const-string v4, "viewBinding.extraInfoArea"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    .line 25
    invoke-interface {v0, v1, v3, v4}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->setVideoChatUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->addr:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAddressStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    invoke-direct {v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->addr:Landroid/widget/TextView;

    const-string v3, "viewBinding.addr"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animateAddress(Landroid/widget/TextView;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 29
    sget v2, Lcom/guochao/faceshow/component/f2fmatch/R$id;->message:I

    .line 30
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->obtainChatFragment(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    .line 32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_4
    return-void
.end method

.method public final setF2fMatchRoomInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-void
.end method

.method public final setMatchUserIsInSmallPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->matchUserIsInSmallPosition:Z

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    return-void
.end method

.method public final stopAudioRecord(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->inputMessage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->audioTranslate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->stopAudioRecord(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->f2fChatFragmentBase:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    const-string v2, ""

    invoke-direct {v0, v2, v1, v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;->sendSpeechToTextResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    :cond_0
    return-void
.end method
