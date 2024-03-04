.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;
    }
.end annotation

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
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001ZB\u0007\u00a2\u0006\u0004\u0008Y\u0010FJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R,\u0010\u0014\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R$\u00100\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u00106\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010#\u001a\u0004\u00087\u0010%\"\u0004\u00088\u0010\'R\u001b\u0010=\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R(\u0010?\u001a\u00020>8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008?\u0010@\u0012\u0004\u0008E\u0010F\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR$\u0010H\u001a\u0004\u0018\u00010G8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001a\u0010P\u001a\u0008\u0012\u0004\u0012\u00020O0N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR$\u0010S\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010X\u00a8\u0006["
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "",
        "setLiveDataObserve",
        "addGroup",
        "initDelete",
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
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "adapter",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "getAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "setAdapter",
        "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V",
        "Landroid/widget/PopupWindow;",
        "mDeletePop",
        "Landroid/widget/PopupWindow;",
        "getMDeletePop",
        "()Landroid/widget/PopupWindow;",
        "setMDeletePop",
        "(Landroid/widget/PopupWindow;)V",
        "",
        "currentIndex",
        "I",
        "getCurrentIndex",
        "()I",
        "setCurrentIndex",
        "(I)V",
        "Landroid/widget/Button;",
        "deleteView",
        "Landroid/widget/Button;",
        "getDeleteView",
        "()Landroid/widget/Button;",
        "setDeleteView",
        "(Landroid/widget/Button;)V",
        "",
        "groupName",
        "Ljava/lang/String;",
        "getGroupName",
        "()Ljava/lang/String;",
        "setGroupName",
        "(Ljava/lang/String;)V",
        "count",
        "getCount",
        "setCount",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "viewModel",
        "Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "Landroid/view/MenuItem;",
        "menuItem",
        "Landroid/view/MenuItem;",
        "getMenuItem",
        "()Landroid/view/MenuItem;",
        "setMenuItem",
        "(Landroid/view/MenuItem;)V",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "startActivityLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Ls8/c;",
        "mRenameGroupDialog",
        "Ls8/c;",
        "getMRenameGroupDialog",
        "()Ls8/c;",
        "setMRenameGroupDialog",
        "(Ls8/c;)V",
        "<init>",
        "MyItemTouchHelperCallBack",
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

.field private count:I

.field private currentIndex:I

.field private deleteView:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private groupName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDeletePop:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRenameGroupDialog:Ls8/c;
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

.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

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

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/friend/k;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/k;

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026{\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private final addGroup()V
    .locals 7

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_friend_group_click:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->count:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const v0, 0x7f1203b4

    .line 3
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

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->startActivityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic d0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->startActivityLauncher$lambda-8(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initDelete$lambda-6(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->setLiveDataObserve$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/View;)V

    return-void
.end method

.method private final initAdapter()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$itemTouchHelper$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$itemTouchHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final initDelete()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a5

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/j;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 8
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f13013f

    .line 9
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    :cond_0
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->mDeletePop:Landroid/widget/PopupWindow;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initDelete$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->deleteView:Landroid/widget/Button;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final initDelete$lambda-6(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->mDeletePop:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    const p1, 0x7f1203b2

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.frien\u2026group_delect_default_tip)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->deleteGroup(Landroid/content/Context;Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->addGroup()V

    return-void
.end method

.method public static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initDelete$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    return-void
.end method

.method public static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->onCreateOptionsMenu$lambda-7(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private static final onCreateOptionsMenu$lambda-7(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a09f3

    if-ne p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$onCreateOptionsMenu$1$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$onCreateOptionsMenu$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupSort(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private final setLiveDataObserve()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setLiveDataObserve$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->count:I

    .line 2
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private static final startActivityLauncher$lambda-8(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->count:I

    return v0
.end method

.method public final getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->currentIndex:I

    return v0
.end method

.method public final getDeleteView()Landroid/widget/Button;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->deleteView:Landroid/widget/Button;

    return-object v0
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMDeletePop()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->mDeletePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public final getMRenameGroupDialog()Ls8/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->mRenameGroupDialog:Ls8/c;

    return-object v0
.end method

.method public getMenuItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->viewModel$delegate:Lkotlin/Lazy;

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

    const p1, 0x7f1203b3

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->setLiveDataObserve()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;->addImg:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initAdapter()V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->initDelete()V

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

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->setMenuItem(Landroid/view/MenuItem;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/friend/g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/friend/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->adapter:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;

    return-void
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->count:I

    return-void
.end method

.method public final setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->currentIndex:I

    return-void
.end method

.method public final setDeleteView(Landroid/widget/Button;)V
    .locals 0
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->deleteView:Landroid/widget/Button;

    return-void
.end method

.method public final setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->groupName:Ljava/lang/String;

    return-void
.end method

.method public final setMDeletePop(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->mDeletePop:Landroid/widget/PopupWindow;

    return-void
.end method

.method public final setMRenameGroupDialog(Ls8/c;)V
    .locals 0
    .param p1    # Ls8/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->mRenameGroupDialog:Ls8/c;

    return-void
.end method

.method public setMenuItem(Landroid/view/MenuItem;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->menuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;

    return-void
.end method
