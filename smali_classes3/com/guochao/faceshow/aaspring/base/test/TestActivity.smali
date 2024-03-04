.class public final Lcom/guochao/faceshow/aaspring/base/test/TestActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/test/TestModel;",
        "Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/test/TestActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/test/TestModel;",
        "Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;",
        "()V",
        "viewBinding",
        "Lcom/guochao/lib_core/databinding/ActivityTestBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/lib_core/databinding/ActivityTestBinding;",
        "setViewBinding",
        "(Lcom/guochao/lib_core/databinding/ActivityTestBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "viewModel2",
        "getViewModel2",
        "viewModel2$delegate",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onCreate",
        "savedInstanceState",
        "onModelUpdate",
        "model",
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


# instance fields
.field public viewBinding:Lcom/guochao/lib_core/databinding/ActivityTestBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel2$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/test/TestActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/test/TestActivity$special$$inlined$lazyViewModel$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity$special$$inlined$lazyViewModel$default$2;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->viewModel2$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/base/test/TestModel;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->onCreate$lambda-0(Lcom/guochao/faceshow/aaspring/base/test/TestModel;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel2()Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->viewModel2$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;

    return-object v0
.end method

.method private static final onCreate$lambda-0(Lcom/guochao/faceshow/aaspring/base/test/TestModel;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/lib_core/databinding/ActivityTestBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->viewBinding:Lcom/guochao/lib_core/databinding/ActivityTestBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->getViewModel2()Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/test/a;->a:Lcom/guochao/faceshow/aaspring/base/test/a;

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/test/TestModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->onModelUpdate(Lcom/guochao/faceshow/aaspring/base/test/TestModel;)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/base/test/TestModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/test/TestModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/lib_core/databinding/ActivityTestBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/lib_core/databinding/ActivityTestBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/test/TestActivity;->viewBinding:Lcom/guochao/lib_core/databinding/ActivityTestBinding;

    return-void
.end method
