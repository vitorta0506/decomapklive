.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;
    }
.end annotation

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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0016H\u0002J\u0012\u0010\u001c\u001a\u00020\u00162\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u001f\u001a\u00020\u00162\u0008\u0010\u001d\u001a\u0004\u0018\u00010 R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "()V",
        "matching",
        "",
        "randomTip",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;",
        "viewBinding",
        "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadRandomTips",
        "onModelUpdate",
        "model",
        "showMatching",
        "showWaitingMatchRoomInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "RandomTip",
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
.field private matching:Z

.field private randomTip:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->viewModel$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->matching:Z

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->initView$lambda-1$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showWaitingMatchRoomInfo$lambda-3$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showWaitingMatchRoomInfo$lambda-6$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-1$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V
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

.method private final loadRandomTips()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->randomTip:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->cancel()V

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.MatchingTipsFinder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchingTipsFinder;->findTips()[Ljava/lang/Integer;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->tips:Landroid/widget/TextView;

    const-string v4, "viewBinding.tips"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroid/widget/TextView;[Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->randomTip:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    return-void
.end method

.method private static final showWaitingMatchRoomInfo$lambda-3$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->moveToMini()V

    return-void
.end method

.method private static final showWaitingMatchRoomInfo$lambda-6$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->exitCurrentRoom(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->cancelMatchAndBackToPrepare()V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showWaitingMatchRoomInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->beauty:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/g;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->radar:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$initView$1$2;

    invoke-direct {p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$initView$1$2;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public bridge synthetic onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->onModelUpdate(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showWaitingMatchRoomInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    :cond_0
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    return-void
.end method

.method public final showMatching(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->matching:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->loadingAnim:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$raw;->color_change_anim_bg:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->loadRandomTips()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->randomTip:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->cancel()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->loadingAnim:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->clearPlay()V

    :goto_0
    return-void
.end method

.method public final showWaitingMatchRoomInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object p1

    .line 2
    iget-object v2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchedInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchingArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->mini:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$mipmap;->icon_f2f_minisize_prepare:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->beauty:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/faceshow/component/f2fmatch/R$mipmap;->icon_f2f_beauty_matching:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->mini:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/h;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object v2

    .line 8
    iget-object v3, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->addr:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAddressStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchedInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchingArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-static {p0}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/bumptech/glide/request/h;->y0()Lcom/bumptech/glide/request/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 14
    sget v1, Lcom/guochao/lib_core/R$mipmap;->default_head:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-object v1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->avatar:Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 15
    invoke-static {p0}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 16
    new-instance v1, Ljc/d;

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 17
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, -0x1

    .line 18
    invoke-direct {v1, v3, v4}, Ljc/d;-><init>(FI)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    .line 20
    iget-object v1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->countryFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    .line 22
    iget-object v1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->extraInfoArea:Landroid/widget/LinearLayout;

    const-string v3, "extraInfoArea"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->setUserInfo(Lcom/guochao/faceshow/aaspring/base/model/GCUser;Landroid/view/ViewGroup;)V

    .line 23
    iget-object p1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->mini:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$mipmap;->icon_f2f_exit_matched:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object p1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->beauty:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$mipmap;->icon_f2f_beauty_matched:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object p1, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->mini:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/i;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
