.class public final Lcom/guochao/faceshow/guild/activity/ContractResultActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u001f\u001a\u00020\u001d2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!H\u0002J\u0012\u0010#\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010*\u001a\u00020\'2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010-\u001a\u00020\u001d2\u0008\u0010.\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010/\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u00100\u001a\u00020\u001dH\u0002J\u0008\u00101\u001a\u00020\u001dH\u0002J\u000c\u00102\u001a\u000203*\u000204H\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u00065"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/ContractResultActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;",
        "()V",
        "dialog",
        "Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;",
        "getDialog",
        "()Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;",
        "setDialog",
        "(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;)V",
        "lastClick",
        "",
        "startActivityLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "viewBinding",
        "Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkIntent",
        "",
        "intent",
        "initProcessAdapter",
        "list",
        "",
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onMenuItemClick",
        "item",
        "Landroid/view/MenuItem;",
        "onModelUpdate",
        "model",
        "onNewIntent",
        "removeMenuItem",
        "setLiveDataObserve",
        "toColorSpan",
        "",
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
.field private dialog:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastClick:J

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

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

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

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/guochao/faceshow/guild/activity/e0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/e0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getStartActivityLauncher$p(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method private final checkIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "obj"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->checkSignState()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->setLiveDataObserve$lambda-1(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->setLiveDataObserve$lambda-4(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->setLiveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->startActivityLauncher$lambda-10(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private final initProcessAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;

    invoke-direct {v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;-><init>()V

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->processRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->processRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final removeMenuItem()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method private final setLiveDataObserve()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getCheckSignExpireLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/h0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/h0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/f0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/f0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getCancelResultLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/g0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/g0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setLiveDataObserve$lambda-1(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/lang/Integer;)V
    .locals 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/guild/activity/ContractActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget v0, Lcom/guochao/faceshow/guild/R$string;->guild_check_sign_expire_tip:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "getString(R.string.guild\u2026heck_sign_expire_tip, it)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    :goto_1
    return-void
.end method

.method private static final setLiveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getStatus()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    .line 2
    sget v0, Lcom/guochao/faceshow/guild/R$string;->guild_tips_1:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->setRecordVoList(Ljava/util/List;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    sget v0, Lcom/guochao/faceshow/guild/R$string;->join_contract:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->guildInformagtionLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->guildId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getGuildId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->guildName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;-><init>(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V

    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->dialog:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;

    .line 10
    new-instance v4, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V

    .line 11
    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->setMOnMenuClickListener(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->time:Landroid/widget/TextView;

    .line 14
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->format_time:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->timeTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->time:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    sget v0, Lcom/guochao/faceshow/guild/R$string;->join_agency:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->guildInformagtionLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 21
    :pswitch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->status_fail:I

    .line 23
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->dismissed_fail:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    sget v4, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 27
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 28
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->removeMenuItem()V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->processLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reasonLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reason:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRefuseComplain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordVoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->initProcessAdapter(Ljava/util/List;)V

    goto/16 :goto_2

    .line 34
    :pswitch_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->termination_contract_success:I

    .line 36
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 37
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->termination_contract_success:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    sget v4, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_1:I

    .line 40
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 41
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->removeMenuItem()V

    .line 43
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reasonLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->processLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordVoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->initProcessAdapter(Ljava/util/List;)V

    goto/16 :goto_2

    .line 46
    :pswitch_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getTitleBarController()Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->findMenuItem(I)Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getTitleBarController()Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->removeMenuItem(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;)V

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->status_in_verification:I

    .line 50
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->wait_audit:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    sget v4, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_1:I

    .line 54
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->removeMenuItem()V

    .line 57
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->processLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordVoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->initProcessAdapter(Ljava/util/List;)V

    goto/16 :goto_2

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->status_fail:I

    .line 61
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 62
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->signed_fail:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    sget v4, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 65
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 66
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->removeMenuItem()V

    .line 68
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reasonLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reason:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRefuseReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordVoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->initProcessAdapter(Ljava/util/List;)V

    goto/16 :goto_2

    .line 71
    :pswitch_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->status_in_verification:I

    .line 73
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 74
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->wait_audit:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    sget v4, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_1:I

    .line 77
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 78
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reasonLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 80
    :pswitch_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->status_success:I

    .line 82
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 83
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->signed:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    sget v4, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_1:I

    .line 86
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 87
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reasonLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->removeMenuItem()V

    goto :goto_2

    .line 90
    :pswitch_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    sget v4, Lcom/guochao/faceshow/guild/R$mipmap;->status_in_verification:I

    .line 92
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 93
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->wait_audit:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->state:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    sget v4, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_1:I

    .line 96
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 97
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->reasonLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->removeMenuItem()V

    .line 100
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordVoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 101
    sget p1, Lcom/guochao/faceshow/guild/R$string;->my_contract:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 102
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;->processLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final setLiveDataObserve$lambda-4(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/lang/Boolean;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/guochao/faceshow/guild/R$string;->revoked:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.revoked)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/guochao/faceshow/guild/R$string;->revoke_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.revoke_fail)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->checkSignState()V

    :goto_0
    return-void
.end method

.method private static final startActivityLauncher$lambda-10(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->checkSignState()V

    :cond_0
    return-void
.end method

.method private final toColorSpan(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getDialog()Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->dialog:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 1
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
    invoke-static {}, Lcom/previewlibrary/a;->a()Lcom/previewlibrary/a;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/guild/view/e;

    invoke-direct {v0}, Lcom/guochao/faceshow/guild/view/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/previewlibrary/a;->c(Lbd/a;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->setLiveDataObserve()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->checkIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    .line 3
    sget v0, Lcom/guochao/faceshow/guild/R$string;->cancel_contract:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->toColorSpan(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 5
    sget v0, Lcom/guochao/faceshow/guild/R$string;->terminate_contract:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->toColorSpan(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_4
    :goto_2
    const/4 v5, 0x3

    if-nez v0, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 7
    sget v0, Lcom/guochao/faceshow/guild/R$string;->resign:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->toColorSpan(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    goto :goto_5

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_8

    :goto_4
    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    :goto_5
    const/4 v5, 0x4

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_a

    goto :goto_4

    :cond_a
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_b

    .line 9
    sget v0, Lcom/guochao/faceshow/guild/R$string;->cancel_contract:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->toColorSpan(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_b
    const/4 v5, 0x5

    if-nez v0, :cond_c

    goto :goto_8

    .line 10
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_d

    .line 11
    sget v0, Lcom/guochao/faceshow/guild/R$string;->resign:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->toColorSpan(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v5, 0x6

    if-nez v0, :cond_e

    goto :goto_9

    .line 12
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_f

    .line 13
    sget v0, Lcom/guochao/faceshow/guild/R$string;->terminate_contract:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->toColorSpan(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    :goto_9
    if-nez v1, :cond_10

    .line 14
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 15
    :cond_10
    sget v0, Lcom/guochao/faceshow/guild/R$id;->creater:I

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 16
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 17
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->lastClick:J

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x4

    if-eqz v4, :cond_6

    :goto_5
    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_8

    goto :goto_5

    :cond_8
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v1

    if-lt v1, v5, :cond_9

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getGuildId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancelRescind(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_10

    .line 9
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellation(Ljava/lang/Integer;)V

    goto/16 :goto_10

    :cond_a
    const/4 v4, 0x3

    if-nez v0, :cond_b

    goto :goto_9

    .line 10
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_c

    :goto_8
    const/4 v4, 0x1

    goto :goto_b

    :cond_c
    :goto_9
    const/4 v4, 0x5

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_e

    goto :goto_8

    :cond_e
    :goto_a
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_11

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v0, :cond_16

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v2

    if-eq v2, v3, :cond_10

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_c

    .line 13
    :cond_f
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->checkSignExpire()V

    goto :goto_10

    .line 14
    :cond_10
    :goto_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/guild/activity/ContractActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    :cond_11
    if-nez v0, :cond_12

    goto :goto_e

    .line 16
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_13

    :goto_d
    const/4 v2, 0x1

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v1, 0x6

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_15

    goto :goto_d

    :cond_15
    :goto_f
    if-eqz v2, :cond_16

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "obj"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 20
    :cond_16
    :goto_10
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->checkIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final setDialog(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->dialog:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityContractResultBinding;

    return-void
.end method
