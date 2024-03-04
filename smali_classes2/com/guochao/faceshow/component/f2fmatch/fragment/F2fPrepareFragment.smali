.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0013H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;)V",
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
        "showBeautyTipIfNeed",
        "view",
        "showGenderTipIfNeed",
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
.field public viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

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

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->initView$lambda-4$lambda-1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->initView$lambda-4$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->initView$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->initView$lambda-4$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->initView$lambda-4$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V

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

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-object v0
.end method

.method private static final initView$lambda-4$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchHistoryFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchHistoryFragment;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "requireActivity().supportFragmentManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "match_history"

    .line 3
    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final initView$lambda-4$lambda-1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->showGenderFilterDialog()V

    .line 2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_F2F_GENDER"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->genderTips:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private static final initView$lambda-4$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-interface {p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->showPendantDialog()V

    .line 2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_F2F_BEAUTY"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->beautyTips:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private static final initView$lambda-4$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$string;->mini_1v1_dialog_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.mini_1v1_dialog_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment$initView$1$4$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment$initView$1$4$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment$initView$1$4$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment$initView$1$4$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final initView$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->icon:Landroid/widget/ImageView;

    sget p1, Lcom/guochao/faceshow/component/f2fmatch/R$drawable;->ic_gender_female:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->icon:Landroid/widget/ImageView;

    sget p1, Lcom/guochao/faceshow/component/f2fmatch/R$drawable;->ic_gender_male:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->icon:Landroid/widget/ImageView;

    sget p1, Lcom/guochao/faceshow/component/f2fmatch/R$drawable;->ic_gender_no_limit:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private final showBeautyTipIfNeed(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_F2F_BEAUTY"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->beautyTips:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final showGenderTipIfNeed(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_F2F_GENDER"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->genderTips:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

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

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->history:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/k;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->beauty:Landroid/widget/ImageView;

    const-string v0, "beauty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->showBeautyTipIfNeed(Landroid/view/View;)V

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->filterDialog:Landroid/widget/FrameLayout;

    const-string v0, "filterDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->showGenderTipIfNeed(Landroid/view/View;)V

    .line 5
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->filterDialog:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/j;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/j;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->beauty:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/m;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/m;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->svgaHand:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$raw;->f_f_hand:I

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 8
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    const-string v0, "KEY_F2F_SLIDE_UP"

    .line 9
    invoke-virtual {p2, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    iget-object p2, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->slidUpTipsTv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;->mini:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/fragment/l;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/l;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchGenderLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/fragment/n;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/n;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPrepareBinding;

    return-void
.end method
