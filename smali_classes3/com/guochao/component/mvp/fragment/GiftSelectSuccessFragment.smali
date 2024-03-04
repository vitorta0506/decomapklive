.class public final Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;
.super Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;",
        "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;",
        "()V",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "",
        "getCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "setCallBack",
        "(Lkotlin/jvm/functions/Function1;)V",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;)V",
        "viewModel",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "Companion",
        "component_mvp_release"
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
.field public static final Companion:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->initView$lambda-3(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->initView$lambda-0(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    iget-object p0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->callBack:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 8

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/mvp/model/TypeData;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    :goto_1
    if-ne v1, v2, :cond_5

    .line 4
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_use_click:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$3$1$1;

    const/4 p2, 0x0

    invoke-direct {v5, p0, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$3$1$1;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_5
    if-lez v1, :cond_0

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_use_click:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, " tokens/user/info/setDressUp"

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "dressUpId"

    invoke-virtual {v0, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "types"

    .line 9
    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget p1, Lcom/guochao/component/mvp/R$string;->common_do_success:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p0, "getString(R.string.common_do_success)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void
.end method

.method public static final newInstance(Ljava/util/List;)Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)",
            "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;->newInstance(Ljava/util/List;)Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCallBack()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
    invoke-super {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->closeIV:Landroid/widget/ImageView;

    const-string v0, "viewBinding.closeIV"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/guochao/component/mvp/fragment/s;

    invoke-direct {v4, p0}, Lcom/guochao/component/mvp/fragment/s;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->okTV:Landroid/widget/TextView;

    const-string v0, "viewBinding.okTV"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/component/mvp/fragment/r;

    invoke-direct {v4, p0}, Lcom/guochao/component/mvp/fragment/r;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->useTV:Landroid/widget/TextView;

    const-string v0, "viewBinding.useTV"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/component/mvp/fragment/t;

    invoke-direct {v4, p0, p2}, Lcom/guochao/component/mvp/fragment/t;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;Ljava/util/ArrayList;)V

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v4, 0x2

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eq v1, v4, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/guochao/component/mvp/R$layout;->layout_get_gift_more:I

    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->fragmentDataContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v5, 0x41400000    # 12.0f

    .line 11
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 12
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/high16 v5, 0x41c00000    # 24.0f

    .line 13
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    new-instance v2, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;

    invoke-direct {v2, p2, p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;-><init>(Ljava/util/ArrayList;Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object p2, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->fragmentDataContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/guochao/component/mvp/R$layout;->layout_get_gift_two:I

    iget-object v4, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->fragmentDataContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/g;

    sget v6, Lcom/guochao/component/mvp/R$id;->imageView:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 21
    sget v5, Lcom/guochao/component/mvp/R$id;->nameTV:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/g;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 23
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->fragmentDataContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/guochao/component/mvp/R$layout;->layout_get_gift_one:I

    iget-object v2, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->fragmentDataContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {v2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    sget v2, Lcom/guochao/component/mvp/R$id;->imageView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 27
    sget v1, Lcom/guochao/component/mvp/R$id;->nameTV:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p2, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;->fragmentDataContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public final setCallBack(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;

    return-void
.end method
