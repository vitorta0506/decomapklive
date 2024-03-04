.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u0018H\u0002J\u0012\u0010\u001e\u001a\u00020\u00182\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0002J\u0008\u0010!\u001a\u00020\u0018H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "()V",
        "adapter",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;",
        "currentGroupIndex",
        "",
        "isFirstEnterKey",
        "",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadData",
        "onModelUpdate",
        "model",
        "setEnvent",
        "setLiveDataObserve",
        "FriendListAdapter",
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


# instance fields
.field private adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentGroupIndex:I

.field private isFirstEnterKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->b(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "first_enter_friendGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->isFirstEnterKey:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->loadData$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setLiveDataObserve$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    return-object p0
.end method

.method public static final synthetic access$setCurrentGroupIndex$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->currentGroupIndex:I

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final loadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final loadData$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->setGroupList(Ljava/util/List;)V

    :goto_0
    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->isSelect()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_3
    move v0, v3

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->isFirstEnterKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 9
    :cond_5
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method private final setEnvent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->searchView:Lcom/guochao/faceshow/databinding/SearchTvViewBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/SearchTvViewBinding;->tvSearch:Landroid/widget/TextView;

    const v1, 0x7f1207bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->searchView:Lcom/guochao/faceshow/databinding/SearchTvViewBinding;

    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/SearchTvViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method private static final setEnvent$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p2

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    const/4 p4, 0x1

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getGroupList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result p3

    invoke-virtual {p2, p4, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->updateExpande(ZI)V

    .line 6
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSelect(Ljava/lang/Boolean;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->isFirstEnterKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->isFirstEnterKey:Ljava/lang/String;

    invoke-static {p0, p5}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    :cond_2
    return p5
.end method

.method private static final setEnvent$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->start(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private static final setEnvent$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->currentGroupIndex:I

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getGroupList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->currentGroupIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSelect(Ljava/lang/Boolean;)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->currentGroupIndex:I

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getGroupList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->currentGroupIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSelect(Ljava/lang/Boolean;)V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->currentGroupIndex:I

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :goto_2
    return-void
.end method

.method private static final setEnvent$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupList()V

    return-void
.end method

.method private static final setEnvent$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p5, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p1, p2, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getGroupList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "name"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final setLiveDataObserve()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getFriendListLivedata()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setLiveDataObserve$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->emptyText:Landroid/widget/TextView;

    const p2, 0x7f1203b6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const p2, 0x7f0603ce

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->friendList:Landroid/widget/ExpandableListView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->adapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setLiveDataObserve()V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->loadData()V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupList()V

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

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    return-void
.end method
