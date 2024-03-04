.class public final Lcom/guochao/faceshow/guild/activity/ContractActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/ContractActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;",
        "()V",
        "startActivityLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "viewBinding",
        "Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
        "startActivity",
        "type",
        "",
        "component_guild_release"
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
.field private final startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
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

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ContractActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/ContractActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/guochao/faceshow/guild/activity/d0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/d0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->initView$lambda-2$lambda-0(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->initView$lambda-2$lambda-1(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->startActivityLauncher$lambda-5(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-2$lambda-0(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lva/b;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->startActivity(I)V

    return-void
.end method

.method private static final initView$lambda-2$lambda-1(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lva/b;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->startActivity(I)V

    return-void
.end method

.method private final startActivity(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final startActivityLauncher$lambda-5(Lcom/guochao/faceshow/guild/activity/ContractActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/ContractViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$string;->contract:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;->personalLive:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/b0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/b0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;->guildLive:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/c0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/c0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;->personalLive:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;->guildLive:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ContractActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityContractBinding;

    return-void
.end method
