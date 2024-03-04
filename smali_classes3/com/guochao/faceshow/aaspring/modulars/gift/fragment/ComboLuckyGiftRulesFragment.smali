.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008%\u0010$J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u001a\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR(\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u001d\u0010\u001e\u0012\u0004\u0008#\u0010$\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "onStart",
        "Landroid/view/View;",
        "root",
        "initView",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "Ly7/f;",
        "giftEvent",
        "handleEvent",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;",
        "viewModel",
        "",
        "isShow",
        "Z",
        "Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "<init>",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isShow:Z

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$viewModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->viewModel$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->isShow:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a09e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const v1, 0x7f120548

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->getMaxTimes()I

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x2710

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public static final newInstance(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;->newInstance(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleEvent(Ly7/f;)V
    .locals 0
    .param p1    # Ly7/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->isShow:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    :cond_0
    return-void
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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;->titleBar:Lcom/guochao/faceshow/databinding/LayoutComboGiftTitleBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutComboGiftTitleBinding;->back:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const p1, 0x7f13012b

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->isShow:Z

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gift"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$Companion;->newInstance(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gift_detail"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, -0x2

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    .line 7
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;

    return-void
.end method
