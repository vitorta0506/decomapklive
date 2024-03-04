.class public final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;,
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014J\u0006\u0010\u0011\u001a\u00020\nR\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "",
        "initViewModel",
        "showAgreementWarningDialog",
        "launchLineApp",
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;",
        "step",
        "",
        "addToBackStack",
        "",
        "addFragment",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "goToNextScreen",
        "Lrc/a;",
        "lineApiClient$delegate",
        "Lkotlin/Lazy;",
        "getLineApiClient",
        "()Lrc/a;",
        "lineApiClient",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "viewModel",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "currentStep",
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;",
        "<init>",
        "()V",
        "Companion",
        "CreateOpenChatStep",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final ARG_CHANNEL_ID:Ljava/lang/String; = "arg_channel_id"

.field public static final ARG_ERROR_RESULT:Ljava/lang/String; = "arg_error_result"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_OPEN_CHATROOM_INFO:Ljava/lang/String; = "arg_open_chatroom_info"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentStep:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

.field private final lineApiClient$delegate:Lkotlin/Lazy;

.field private viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->lineApiClient$delegate:Lkotlin/Lazy;

    .line 3
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->ChatroomInfo:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->currentStep:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    return-void
.end method

.method public static final synthetic access$getLineApiClient$p(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)Lrc/a;
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->getLineApiClient()Lrc/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$launchLineApp(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->launchLineApp()V

    return-void
.end method

.method public static final synthetic access$showAgreementWarningDialog(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog()V

    return-void
.end method

.method private final addFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 3
    :cond_0
    sget p2, Lcom/linecorp/linesdk/R$id;->container:I

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->createFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result p1

    return p1
.end method

.method static synthetic addFragment$default(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->addFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I

    move-result p0

    return p0
.end method

.method private final createFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;->newInstance()Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;->newInstance()Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final getChatRoomCreationResult(Landroid/content/Intent;)Lcom/linecorp/linesdk/ActionResult;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/linecorp/linesdk/ActionResult<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            "Lcom/linecorp/linesdk/LineApiError;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;->getChatRoomCreationResult(Landroid/content/Intent;)Lcom/linecorp/linesdk/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method private final getLineApiClient()Lrc/a;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->lineApiClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrc/a;

    return-object v0
.end method

.method private final initViewModel()V
    .locals 3

    const-string v0, "openchat"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;

    invoke-direct {v1, p0, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/SharedPreferences;)V

    .line 3
    invoke-static {p0, v1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    .line 4
    const-class v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(\n \u2026nfoViewModel::class.java]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-string/jumbo v1, "viewModel"

    if-nez v0, :cond_0

    .line 6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getOpenChatRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 7
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCreateChatRoomError()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 8
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isCreatingChatRoom()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$4;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$4;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 9
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getShouldShowAgreementWarning()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$5;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$5;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final launchLineApp()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showAgreementWarningDialog()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/linecorp/linesdk/auth/internal/b;->a(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget v2, Lcom/linecorp/linesdk/R$string;->openchat_not_agree_with_terms:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$1;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 5
    sget v2, Lcom/linecorp/linesdk/R$string;->open_line:I

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Z)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6
    sget v2, Lcom/linecorp/linesdk/R$string;->common_cancel:I

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$2;

    invoke-direct {v3, p0, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Z)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const v2, 0x104000a

    .line 7
    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3;

    invoke-direct {v3, p0, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Z)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 8
    :goto_1
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final goToNextScreen()I
    .locals 4

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->UserProfile:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->addFragment$default(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;ZILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/linecorp/linesdk/R$layout;->activity_create_open_chat:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel()V

    .line 4
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->currentStep:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->addFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I

    return-void
.end method
