.class public final Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0007J\u0008\u0010\u000e\u001a\u00020\rH\u0007J\u001a\u0010\u000f\u001a\u00020\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0011J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bH\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "()V",
        "value",
        "",
        "isNotificationShowing",
        "()Z",
        "setNotificationShowing",
        "(Z)V",
        "queue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Landroid/os/Bundle;",
        "onResume",
        "",
        "onStop",
        "showInAppNotification",
        "data",
        "",
        "",
        "showInAppNotificationOnActivity",
        "activity",
        "Landroid/app/Activity;",
        "bundle",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isNotificationShowing:Z

.field private static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;

    .line 1
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final showInAppNotificationOnActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "activity.supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010041

    const v1, 0x7f010042

    const v2, 0x7f010025

    .line 5
    invoke-virtual {p1, v0, v2, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x1020002

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;-><init>()V

    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p2, "in_app_notification"

    .line 7
    invoke-virtual {p1, v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->setNotificationShowing(Z)V

    return-void
.end method


# virtual methods
.method public final isNotificationShowing()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->isNotificationShowing:Z

    return v0
.end method

.method public final onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->showInAppNotificationOnActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public final setNotificationShowing(Z)V
    .locals 1

    .line 1
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->isNotificationShowing:Z

    if-nez p1, :cond_2

    .line 2
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->showInAppNotificationOnActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final showInAppNotification(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "toBundle(data)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "12"

    .line 3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->isNotificationShowing:Z

    if-nez v1, :cond_3

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;->showInAppNotificationOnActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
