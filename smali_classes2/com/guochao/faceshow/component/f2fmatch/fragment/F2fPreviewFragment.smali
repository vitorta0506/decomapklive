.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0008\u0010\"\u001a\u00020\u001dH\u0016J\u0008\u0010#\u001a\u00020\u001dH\u0016J\u0006\u0010$\u001a\u00020\u001dR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R$\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u0002\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "muteOrStop",
        "",
        "getMuteOrStop",
        "()Z",
        "setMuteOrStop",
        "(Z)V",
        "previewParent",
        "Landroid/view/ViewGroup;",
        "getPreviewParent",
        "()Landroid/view/ViewGroup;",
        "setPreviewParent",
        "(Landroid/view/ViewGroup;)V",
        "pusherModel",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "getPusherModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "pusherModel$delegate",
        "Lkotlin/Lazy;",
        "viewBinding",
        "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "startPreview",
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
.field private muteOrStop:Z

.field public previewParent:Landroid/view/ViewGroup;

.field private final pusherModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;


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

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->pusherModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->pusherModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getMuteOrStop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->muteOrStop:Z

    return v0
.end method

.method public final getPreviewParent()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->previewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "previewParent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->previewView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 3
    new-instance p2, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->muteLocalPreview(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->stopLocalPreview()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->muteOrStop:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->muteOrStop:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->muteLocalPreview(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->startPreview()V

    :goto_0
    return-void
.end method

.method public final setMuteOrStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->muteOrStop:Z

    return-void
.end method

.method public final setPreviewParent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->previewParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    return-void
.end method

.method public final startPreview()V
    .locals 2

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->previewView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->startLocalPreview(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-void
.end method
