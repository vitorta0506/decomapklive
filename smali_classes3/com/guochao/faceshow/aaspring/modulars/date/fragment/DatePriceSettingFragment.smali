.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0012\u0010\u001b\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0012\u0010\u001c\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "currentSelectIndex",
        "",
        "saving",
        "",
        "type",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;)V",
        "viewModel",
        "Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityCreated",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "Companion",
        "DateItemHolder",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentSelectIndex:I

.field private saving:Z

.field private type:I

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$viewModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->viewModel$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->type:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->currentSelectIndex:I

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->initView$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V

    return-void
.end method

.method public static final synthetic access$getCurrentSelectIndex$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->currentSelectIndex:I

    return p0
.end method

.method public static final synthetic access$getSaving$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->saving:Z

    return p0
.end method

.method public static final synthetic access$setCurrentSelectIndex$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->currentSelectIndex:I

    return-void
.end method

.method public static final synthetic access$setSaving$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->saving:Z

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    return-object v0
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getAudioPriceRules()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getVideoPriceRules()Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-gez v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getChecked()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->currentSelectIndex:I

    :cond_4
    move v0, v4

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;->save:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initView$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$list"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->saving:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->currentSelectIndex:I

    if-ltz p2, :cond_1

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->saving:Z

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    move-result-object p2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->type:I

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;

    invoke-direct {v1, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$3$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;->saveCurrentPriceSetting(ILcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public static final instance(I)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;->instance(I)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->type:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;->title:Landroid/widget/TextView;

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->type:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const p2, 0x7f120926

    goto :goto_0

    :cond_1
    const p2, 0x7f12092a

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x50

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
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

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-object p1
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

    return-void
.end method
