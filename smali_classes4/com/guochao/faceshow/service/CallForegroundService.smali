.class public Lcom/guochao/faceshow/service/CallForegroundService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Landroid/app/Notification;
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "12"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->q()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->v()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget v2, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f120927

    goto :goto_0

    :cond_0
    const v2, 0x7f12092b

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_1
    const v1, 0x7f1208f0

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    :goto_1
    const v1, 0x7f080359

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0136

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_2
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x30400000

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v2

    const/16 v3, 0x64

    .line 12
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A1(I)V
    .locals 0

    return-void
.end method

.method public E1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public synthetic L0(Ljava/lang/String;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lx9/a;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;Ljava/lang/String;III)V

    return-void
.end method

.method public O0(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public R(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public R0(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq7/a;->l(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public f1(J)V
    .locals 0

    return-void
.end method

.method public j1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public n1(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/service/CallForegroundService;->a()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public s1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public v1(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public w1(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
