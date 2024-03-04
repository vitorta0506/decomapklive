.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008C\u00104J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R,\u0010\u001a\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010!\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001b\u0010+\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R(\u0010-\u001a\u00020,8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008-\u0010.\u0012\u0004\u00083\u00104\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u00106\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010=\u001a\u00020<8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006D"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "",
        "setLiveDataObserve",
        "addGroup",
        "initAdapter",
        "model",
        "onModelUpdate",
        "Landroid/os/Bundle;",
        "savedInstanceSate",
        "initView",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "",
        "friendId",
        "Ljava/lang/String;",
        "getFriendId",
        "()Ljava/lang/String;",
        "setFriendId",
        "(Ljava/lang/String;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "adapter",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "getAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "setAdapter",
        "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V",
        "",
        "checkIndex",
        "I",
        "getCheckIndex",
        "()I",
        "setCheckIndex",
        "(I)V",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "viewModel",
        "Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "Landroid/view/MenuItem;",
        "menuItem",
        "Landroid/view/MenuItem;",
        "getMenuItem",
        "()Landroid/view/MenuItem;",
        "setMenuItem",
        "(Landroid/view/MenuItem;)V",
        "Ls8/b;",
        "mAddGroupDialog",
        "Ls8/b;",
        "getMAddGroupDialog",
        "()Ls8/b;",
        "setMAddGroupDialog",
        "(Ls8/b;)V",
        "<init>",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private checkIndex:I

.field private friendId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mAddGroupDialog:Ls8/b;

.field private menuItem:Landroid/view/MenuItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->checkIndex:I

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final addGroup()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    const v0, 0x7f1203b4

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.friend_group_max_tip)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getMAddGroupDialog()Ls8/b;

    move-result-object v0

    invoke-virtual {v0}, Ls8/b;->show()V

    :goto_1
    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->onCreateOptionsMenu$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->setLiveDataObserve$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/View;)V

    return-void
.end method

.method private final initAdapter()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->addGroup()V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->addGroup()V

    return-void
.end method

.method private static final onCreateOptionsMenu$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a09f3

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->checkIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->checkIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->friendId:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->setGroup(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final setLiveDataObserve()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/r;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setLiveDataObserve$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    return-object v0
.end method

.method public final getCheckIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->checkIndex:I

    return v0
.end method

.method public final getFriendId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->friendId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMAddGroupDialog()Ls8/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->mAddGroupDialog:Ls8/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mAddGroupDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMenuItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f1207e3

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->friendId:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->setLiveDataObserve()V

    .line 4
    new-instance p1, Ls8/b;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initView$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V

    .line 6
    invoke-direct {p1, p0, v0}, Ls8/b;-><init>(Landroid/content/Context;Ls8/b$a;)V

    const v0, 0x7f1203b5

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls8/b;->b(Ljava/lang/CharSequence;)Ls8/b;

    move-result-object p1

    const-string v0, "override fun initView(sa\u2026      initAdapter()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->setMAddGroupDialog(Ls8/b;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;->addGroup:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;->addImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/q;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->initAdapter()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a09f3

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->menuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->menuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/o;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

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

.method public final setAdapter(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    return-void
.end method

.method public final setCheckIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->checkIndex:I

    return-void
.end method

.method public final setFriendId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->friendId:Ljava/lang/String;

    return-void
.end method

.method public final setMAddGroupDialog(Ls8/b;)V
    .locals 1
    .param p1    # Ls8/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->mAddGroupDialog:Ls8/b;

    return-void
.end method

.method public final setMenuItem(Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->menuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;

    return-void
.end method
