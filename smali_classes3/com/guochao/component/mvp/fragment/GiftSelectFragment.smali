.class public final Lcom/guochao/component/mvp/fragment/GiftSelectFragment;
.super Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;,
        Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;,
        Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u0001:\u0003&\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u001a\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0015J\u0012\u0010%\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00060\u000cR\u00020\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment;",
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
        "mAdapter",
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;",
        "getMAdapter",
        "()Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;",
        "setMAdapter",
        "(Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;)V",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;)V",
        "viewModel",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "createCenterDialog",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "Companion",
        "GiftSelectAdapter",
        "GiftSelectViewHolder",
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
.field public static final Companion:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;
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

.field private mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->initView$lambda-0(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->initView$lambda-3(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "level"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {v1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/mvp/model/TypeData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {v3}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 5
    :goto_2
    new-instance v4, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-direct {v4, p1, v0, v3, v1}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p1

    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;

    invoke-direct {v0, p0, v2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$initView$2$1;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v4, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getReward(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {p1, p3}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->setSelectedPosition(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/mvp/model/TypeData;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/guochao/component/mvp/model/TypeData;->setSelected(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/model/TypeData;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/component/mvp/model/TypeData;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->okTV:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public static final newInstance(IILjava/util/ArrayList;)Lcom/guochao/component/mvp/fragment/GiftSelectFragment;
    .locals 1
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)",
            "Lcom/guochao/component/mvp/fragment/GiftSelectFragment;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;->newInstance(IILjava/util/ArrayList;)Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getMAdapter()Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->closeIV:Landroid/widget/ImageView;

    const-string p1, "viewBinding.closeIV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/j;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/j;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->okTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.okTV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/k;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/k;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    new-instance p2, Lcom/guochao/component/mvp/fragment/l;

    invoke-direct {p2, p0}, Lcom/guochao/component/mvp/fragment/l;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "list"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    .line 8
    iget-object v2, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v2, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_2
    const/4 v2, -0x1

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 11
    check-cast v6, Lcom/guochao/component/mvp/model/TypeData;

    .line 12
    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/TypeData;->getSelected()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    .line 13
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v2, :cond_6

    .line 15
    iget-object v6, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->setSelectedPosition(I)V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->okTV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 18
    iget-object p2, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_7
    if-eq v2, v5, :cond_a

    if-eq v2, v3, :cond_9

    if-eq v2, v4, :cond_8

    goto :goto_5

    .line 20
    :cond_8
    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->titleTV:Landroid/widget/TextView;

    .line 21
    sget p2, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_title_something:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 22
    sget v2, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_shade:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 23
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 24
    :cond_9
    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->titleTV:Landroid/widget/TextView;

    .line 25
    sget p2, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_title_something:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 26
    sget v2, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_avatar:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 27
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 28
    :cond_a
    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;->titleTV:Landroid/widget/TextView;

    .line 29
    sget p2, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_title_something:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 30
    sget v2, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_car:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 31
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
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

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setMAdapter(Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;

    return-void
.end method
