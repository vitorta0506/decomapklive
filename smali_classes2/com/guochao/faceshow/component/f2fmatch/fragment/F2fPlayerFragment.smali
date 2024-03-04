.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;)V",
        "viewModel",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
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
        "startPlay",
        "f2fHeartBeatModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
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
.field public viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-object v0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

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

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;->playerView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->showLog(Z)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    return-void
.end method

.method public final startPlay(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;->playerView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v2, "viewBinding.playerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startPlay(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-void
.end method
