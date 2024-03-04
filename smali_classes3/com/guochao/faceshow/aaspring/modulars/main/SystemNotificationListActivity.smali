.class public final Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "()V",
        "list",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "finish",
        "",
        "getLayoutId",
        "",
        "initView",
        "loadData",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onMenuClicked",
        "menuItem",
        "Landroid/view/MenuItem;",
        "view",
        "Landroid/view/View;",
        "useImmersiveStatusBar",
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

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;-><init>()V

    const-string v2, "1"

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMessageType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;-><init>()V

    const-string v2, "2"

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMessageType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;-><init>()V

    const-string v2, "3"

    .line 10
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMessageType(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->list:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getList$p(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadMessageFromServer()V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b6

    return v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1208af

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public loadData()V
    .locals 2

    const-string v0, "tokens/user/message/findSocialMessage"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$loadData$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$loadData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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

    const/4 v0, 0x0

    const v1, 0x7f0a076b

    const v2, 0x7f120b1b

    .line 1
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f0f03b1

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onMenuClicked(Landroid/view/MenuItem;Landroid/view/View;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a076b

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f12042e

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$onMenuClicked$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$onMenuClicked$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)V

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    :cond_1
    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public useImmersiveStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
