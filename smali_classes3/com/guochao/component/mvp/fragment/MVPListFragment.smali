.class public final Lcom/guochao/component/mvp/fragment/MVPListFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;,
        Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;,
        Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 *2\u00020\u0001:\u0003*+,B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010$\u001a\u00020\u000cJ\u001a\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0014R \u0010\u0003\u001a\u0008\u0018\u00010\u0004R\u00020\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u0002\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008 \u0010!\u00a8\u0006-"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/MVPListFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "adapter",
        "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;",
        "getAdapter",
        "()Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;",
        "setAdapter",
        "(Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "",
        "getCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "setCallBack",
        "(Lkotlin/jvm/functions/Function1;)V",
        "mode",
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
        "getMode",
        "()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
        "setMode",
        "(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)V",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;)V",
        "viewModel",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getAll",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "MVPListAdapter",
        "MVPListViewHolder",
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
.field public static final Companion:Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private mode:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->Companion:Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    const-class v1, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/mvp/fragment/MVPListFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/guochao/component/mvp/fragment/MVPListFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    return-object v0
.end method

.method public final getAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/mvp/model/GiftModel;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/mvp/model/TypeData;

    const/4 v3, 0x2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/component/mvp/model/TypeData;->setStatus(Ljava/lang/Integer;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
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

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getMode()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->mode:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->mode:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "myMVPLevel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->mode:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    .line 4
    :cond_3
    new-instance p1, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->mode:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getDataList()Ljava/util/List;

    move-result-object p2

    :cond_4
    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.guochao.component.mvp.model.GiftModel>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, v0, p2}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;ZLjava/util/List;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setAdapter(Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V
    .locals 0
    .param p1    # Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->adapter:Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;

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

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setMode(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)V
    .locals 0
    .param p1    # Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->mode:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;

    return-void
.end method
