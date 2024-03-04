.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# instance fields
.field private a:Ljava/lang/String;

.field b:Lx9/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "FaceCastCallService"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->b:Lx9/b;

    return-void
.end method

.method public static a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v4, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v4, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    if-ne v1, v2, :cond_3

    .line 6
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    .line 7
    :goto_1
    invoke-virtual {v4, v2}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$d;

    invoke-direct {v4, v0, v1, v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$d;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 8
    invoke-virtual {v2, v4}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

.method private static d(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Ly7/d;

    invoke-direct {v1, p0}, Ly7/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->b:Lx9/b;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->e(Lx9/b;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 5
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static g(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->g()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$c;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$c;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->w(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->e()V

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "11"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->E(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->b:Lx9/b;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->f(Lx9/b;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->b:Lx9/b;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->e(Lx9/b;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->e()V

    return-void
.end method
