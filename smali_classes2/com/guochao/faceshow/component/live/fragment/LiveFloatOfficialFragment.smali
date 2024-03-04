.class public final Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0018\u0010\u0012\u001a\u00020\r2\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\rH\u0002J\u0018\u0010\u0015\u001a\u00020\r2\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "list",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadEventData",
        "data",
        "loadNetData",
        "setDatas",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->initView$lambda-0(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getList$p(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->list:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$loadEventData(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->loadEventData(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setDatas(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private final loadEventData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;

    invoke-direct {v1, p1, p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadEventData$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V

    const-string p1, "c2c_-10000"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private final loadNetData()V
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    const-string v1, "AuthorityNotifyBean"

    .line 2
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const-string v1, "authorityNotifyBean"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->setDatas(Ljava/util/List;)V

    const-string v0, "tokens/user/message/findSysMessageList"

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadNetData$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$loadNetData$1;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private final setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

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
    invoke-static {p1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->setDefaultFragmentViewHeight(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;->back:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/component/live/fragment/h;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/live/fragment/h;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->loadNetData()V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatOfficialBinding;

    return-void
.end method
