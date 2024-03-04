.class public final Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;",
        "()V",
        "startActivityLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "viewBinding",
        "Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
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

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

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

    new-instance v1, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/guochao/faceshow/guild/activity/n0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/n0;-><init>(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->initView$lambda-3(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->startActivityLauncher$lambda-4(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->initView$lambda-2(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Ljava/lang/Integer;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->guildId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guildId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget p1, Lcom/guochao/faceshow/guild/R$string;->invalid_guild_id:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.invalid_guild_id)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    :goto_1
    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroid/view/View;)V
    .locals 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->guildId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget p1, Lcom/guochao/faceshow/guild/R$string;->please_input_guild_id:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.please_input_guild_id)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;->checkIdValid(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final startActivityLauncher$lambda-4(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$string;->join_contract:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->guildId:Landroid/widget/EditText;

    const-string v1, "guildId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/InputGuildIdViewModel;->getChckIdResultLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/guild/activity/o0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/activity/o0;-><init>(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;->applySign:Landroid/widget/Button;

    const-string/jumbo p1, "viewBinding.applySign"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/faceshow/guild/activity/m0;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/guild/activity/m0;-><init>(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

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

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityInputGuildIdBinding;

    return-void
.end method
