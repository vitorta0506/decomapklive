.class public Lcom/guochao/faceshow/BaseApplication;
.super Lcom/guochao/faceshow/BaseAppContext;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;
.implements Lb8/d$a;
.implements Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseApplication"


# instance fields
.field mAppEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/BaseAppContext;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/BaseApplication;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/BaseApplication;

    return-object v0
.end method

.method private initAdjust()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initWhenMainProcess()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->init()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/BaseApplication;->initAdjust()V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 4
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/BaseApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initFacebook()V

    .line 6
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/BaseApplication;->mAppEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->addListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;)V

    .line 8
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->addListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;)V

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/guochao/faceshow/BaseApplication$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/BaseApplication$a;-><init>(Lcom/guochao/faceshow/BaseApplication;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 10
    invoke-super {p0}, Lcom/guochao/faceshow/BaseAppContext;->initWhenMainProcess()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lx6/a;->a(Landroid/content/Context;Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/Contants;->init()V

    .line 3
    invoke-static {p0}, Lcom/google/firebase/d;->r(Landroid/content/Context;)Lcom/google/firebase/d;

    .line 4
    invoke-super {p0}, Lcom/guochao/faceshow/BaseAppContext;->onCreate()V

    .line 5
    sget-boolean v0, Lx6/a;->i:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->setGrey()V

    .line 7
    :cond_0
    sget-object v0, Lx6/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->setBaseUrl(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lx6/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tokens/gift/V4/sendGift"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/ResponseChecker;-><init>()V

    sput-object v0, Li7/a;->d:Li7/a$b;

    return-void
.end method

.method public onLogout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/BaseApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->clearMemory()V

    return-void
.end method

.method public onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/BaseApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/BaseApplication;->mAppEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p2, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/BaseApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/BaseApplication;->mAppEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "first_award_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v0, "api/token/promotion/levelAward/firstAward"

    invoke-direct {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/BaseApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;)V

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public bridge synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method
