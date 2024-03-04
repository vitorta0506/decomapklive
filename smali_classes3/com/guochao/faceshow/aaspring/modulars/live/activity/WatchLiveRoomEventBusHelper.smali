.class public final Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000cH\u0007J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u000eH\u0007R\"\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n \u0012*\u0004\u0018\u00010\u00110\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "",
        "onCreate",
        "onDestroy",
        "Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;",
        "event",
        "closeVoiceRoomEvent",
        "Ly7/s;",
        "onStartPkEvent",
        "Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;",
        "filterVideo",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "onRoomItemDataEvent",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;",
        "kotlin.jvm.PlatformType",
        "activityRef",
        "Ljava/lang/ref/WeakReference;",
        "activity",
        "<init>",
        "(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V",
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
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;ILcom/guochao/faceshow/aaspring/views/LiveRoomView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->filterVideo$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;ILcom/guochao/faceshow/aaspring/views/LiveRoomView;)V

    return-void
.end method

.method private static final filterVideo$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;ILcom/guochao/faceshow/aaspring/views/LiveRoomView;)V
    .locals 1

    const-string v0, "$a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewPager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->setIndexOnly(I)V

    return-void
.end method


# virtual methods
.method public final closeVoiceRoomEvent(Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;)V
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish(Z)V

    :cond_0
    return-void
.end method

.method public final filterVideo(Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;->getRoomItemData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    const/4 v3, -0x1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    .line 6
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "list.get(i)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 7
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ltz v3, :cond_7

    add-int/lit8 p1, v3, 0x1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-le p1, v4, :cond_5

    const/4 p1, 0x0

    .line 9
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_6

    .line 10
    invoke-virtual {v2, p1, v6}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m(IZ)V

    .line 11
    :cond_6
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    .line 12
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->w:Landroid/os/Handler;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;ILcom/guochao/faceshow/aaspring/views/LiveRoomView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->a(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->b(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->c(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->d(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final onRoomItemDataEvent(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_1
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->e(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final onStartPkEvent(Ly7/s;)V
    .locals 2
    .param p1    # Ly7/s;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->p5()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->p5()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->p5()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish(Z)V

    :cond_1
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->f(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
