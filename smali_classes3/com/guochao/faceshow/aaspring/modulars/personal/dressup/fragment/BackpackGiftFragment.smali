.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u0019H\u0002J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0012\u0010\"\u001a\u00020\u00192\u0008\u0010#\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0002J\u0008\u0010%\u001a\u00020\u0019H\u0002R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;",
        "()V",
        "backPackAdapter",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
        "getBackPackAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "setBackPackAdapter",
        "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "hideEmptyView",
        "",
        "showLoadMore",
        "",
        "initRecycleView",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
        "setLoadDataObserve",
        "showEmptyView",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->setLoadDataObserve$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;Lwd/j;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->initView$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;Lwd/j;)V

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final hideEmptyView(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->emptyView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final initRecycleView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0d021c

    invoke-direct {v1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;Lwd/j;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->loadBackPackData(Z)V

    return-void
.end method

.method private final setLoadDataObserve()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getBackPageGiftLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setLoadDataObserve$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getCurrPage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->showEmptyView()V

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getCurrPage()I

    move-result v0

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_9

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getCurrPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->hideEmptyView(Z)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->addData(Ljava/util/List;)V

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getCurrPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->hideEmptyView(Z)V

    goto :goto_2

    .line 10
    :cond_8
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->hideEmptyView(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private final showEmptyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBackPackAdapter()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object p2

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->setLoadDataObserve()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->initRecycleView()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f12010c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;)V

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 p2, 0x0

    .line 9
    invoke-static {p0, p2, v2, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog$default(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;->loadBackPackData(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06009a

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

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

.method public final setBackPackAdapter(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->backPackAdapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;

    return-void
.end method
