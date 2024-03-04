.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;
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
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020$H\u0002J\u0012\u0010&\u001a\u00020$2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u0012\u0010-\u001a\u00020$2\u0008\u0010.\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u0004\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006/"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "()V",
        "adapter",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "friendList",
        "",
        "getFriendList",
        "()Ljava/util/List;",
        "setFriendList",
        "(Ljava/util/List;)V",
        "menuItem",
        "Landroid/view/MenuItem;",
        "getMenuItem",
        "()Landroid/view/MenuItem;",
        "setMenuItem",
        "(Landroid/view/MenuItem;)V",
        "startActivityLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "addFriend",
        "",
        "initAdapter",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onModelUpdate",
        "model",
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
.field private adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private menuItem:Landroid/view/MenuItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private final addFriend()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->friendList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "ids"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->startActivityLauncher$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private final initAdapter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->friendList:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->addFriend()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->addFriend()V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->name:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->onCreateOptionsMenu$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private static final onCreateOptionsMenu$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a09f3

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f12043b

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.input_group_name)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->friendList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object p0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->addGroup(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final startActivityLauncher$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "obj"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->friendList:Ljava/util/List;

    .line 5
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getFriendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->friendList:Ljava/util/List;

    return-object v0
.end method

.method public final getMenuItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->viewModel$delegate:Lkotlin/Lazy;

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

    const p1, 0x7f1203b0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->initAdapter()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->addFriend:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->addImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->name:Landroid/widget/EditText;

    const-string v0, "viewBinding.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;->clearEdit:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->menuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->menuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->menuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7
    :cond_4
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

.method public final setFriendList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->friendList:Ljava/util/List;

    return-void
.end method

.method public final setMenuItem(Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->menuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;

    return-void
.end method
