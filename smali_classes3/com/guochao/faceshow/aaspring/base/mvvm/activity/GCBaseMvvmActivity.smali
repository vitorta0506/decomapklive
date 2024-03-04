.class public abstract Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "VM:",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "TM;>;>",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver<",
        "TM;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u000e\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\u0008\u0012\u0004\u0012\u0002H\u00010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001b\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0013\"\n\u0008\u0002\u0010\u0014\u0018\u0001*\u00020\u0015H\u0084\u0008R\u0014\u0010\u0008\u001a\u0004\u0018\u00018\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "M",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "VM",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver;",
        "()V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onLoadingStateChanged",
        "loadingStateModel",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;",
        "viewBindingByActivity",
        "Lkotlin/Lazy;",
        "T",
        "Landroidx/viewbinding/ViewBinding;",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->onCreate$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V

    return-void
.end method

.method private static final onCreate$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel$ModelUpdateObserver;->onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V

    return-void
.end method


# virtual methods
.method public abstract getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/a;-><init>(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$onCreate$1$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$onCreate$1$2;-><init>(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bindLoading(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onLoadingStateChanged(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showLoading(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingSuccessModel;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingCancelModel;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    goto :goto_0

    .line 7
    :cond_2
    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingFailModel;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final synthetic viewBindingByActivity()Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/viewbinding/ViewBinding;",
            ">()",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity$viewBindingByActivity$1;-><init>(Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method
