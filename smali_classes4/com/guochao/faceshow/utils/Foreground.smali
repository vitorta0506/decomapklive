.class public Lcom/guochao/faceshow/utils/Foreground;
.super Lcom/guochao/faceshow/aaspring/utils/ActivityLifecycleCallBackImp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TIME_TO_CHECK_OPEN:J = 0xa4cb80L

.field private static instance:Lcom/guochao/faceshow/utils/Foreground;


# instance fields
.field private FrontActCount:I

.field private isAppFront:Z

.field private mEnterForegroundTime:J

.field private mLastServiceTime:J

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mRunnable:Ljava/lang/Runnable;

.field mTopActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/utils/Foreground;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/Foreground;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/Foreground;->instance:Lcom/guochao/faceshow/utils/Foreground;

    .line 2
    const-class v0, Lcom/guochao/faceshow/utils/Foreground;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/utils/Foreground;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/ActivityLifecycleCallBackImp;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/utils/Foreground;->FrontActCount:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/Foreground;->isAppFront:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mListeners:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/utils/Foreground$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/utils/Foreground$1;-><init>(Lcom/guochao/faceshow/utils/Foreground;)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private checkUserOpenApp()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "last_open_app"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0xa4cb80

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo v2, "tokens/user/info/userOpenApp"

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, v1, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static get()Lcom/guochao/faceshow/utils/Foreground;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/utils/Foreground;->instance:Lcom/guochao/faceshow/utils/Foreground;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/utils/Foreground;->instance:Lcom/guochao/faceshow/utils/Foreground;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private updateLanguage(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->updateLocal(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public getCurrentActiveActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnterForegroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mEnterForegroundTime:J

    return-wide v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mTopActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/utils/Foreground;->isAppFront:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/utils/Foreground;->updateLanguage(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mTopActivity:Ljava/lang/ref/WeakReference;

    .line 2
    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lw9/a;->a()Lw9/a;

    move-result-object p1

    invoke-virtual {p1}, Lw9/a;->b()V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/utils/Foreground;->FrontActCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/utils/Foreground;->FrontActCount:I

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/utils/Foreground;->isAppFront:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/Foreground;->isAppFront:Z

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "app_in_forground"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->cancelAll()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/Foreground;->onEnterForeground()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/utils/Foreground;->FrontActCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/guochao/faceshow/utils/Foreground;->FrontActCount:I

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/Foreground;->isAppFront:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "app_in_background"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 7
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    sget-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/Foreground;->onEnterBackground()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/Foreground;->onEnterBackground()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEnterBackground()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    .line 2
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;->onEnterBackground()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->q()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiveOnHome()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 6
    const-class v1, Lcom/guochao/faceshow/service/CallForegroundService;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStartForegroundService(Ljava/lang/Class;)Z

    goto :goto_2

    .line 7
    :cond_4
    const-class v1, Lcom/guochao/faceshow/service/LiveForegroundService;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStartForegroundService(Ljava/lang/Class;)Z

    .line 8
    :goto_2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/utils/Foreground;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/guochao/faceshow/utils/Foreground;->mLastServiceTime:J

    .line 10
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isWatchingLive()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    .line 11
    const-class v0, Lcom/guochao/faceshow/service/CallForegroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStartForegroundService(Ljava/lang/Class;)Z

    goto :goto_3

    .line 12
    :cond_6
    const-class v0, Lcom/guochao/faceshow/service/WatchingLiveForegroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStartForegroundService(Ljava/lang/Class;)Z

    .line 13
    :goto_3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/Foreground;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mLastServiceTime:J

    .line 15
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->q()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 16
    const-class v0, Lcom/guochao/faceshow/service/CallForegroundService;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStartForegroundService(Ljava/lang/Class;)Z

    :cond_8
    return-void
.end method

.method public onEnterForeground()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/Foreground;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/guochao/faceshow/utils/Foreground;->mLastServiceTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/utils/Foreground;->checkUserOpenApp()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    .line 4
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;->onEnterForeground()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mEnterForegroundTime:J

    return-void
.end method

.method public registerStateChangedListener(Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterStateChangedListener(Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/Foreground;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
