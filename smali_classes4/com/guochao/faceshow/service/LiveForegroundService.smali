.class public Lcom/guochao/faceshow/service/LiveForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field a:Landroid/app/AlarmManager;

.field b:Landroid/app/PendingIntent;

.field c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/service/LiveForegroundService$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/service/LiveForegroundService$a;-><init>(Lcom/guochao/faceshow/service/LiveForegroundService;)V

    iput-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private a()Landroid/app/Notification;
    .locals 4

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "12"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f120480

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f080359

    .line 4
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isWatchingLive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 9
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    sget-object v0, Ld9/c;->d0:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x30400000

    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v0

    const/16 v3, 0x64

    .line 13
    invoke-static {p0, v3, v2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq7/a;->l(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "alarm"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/service/LiveForegroundService;->a()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/service/LiveForegroundService;->a()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v0

    const/16 v1, 0x3e8

    .line 5
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Ld9/c;->d0:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0xea60

    const-string/jumbo v4, "time"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x2

    const-wide/32 v3, 0xea60

    if-lt v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->a:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-object v1, p0, Lcom/guochao/faceshow/service/LiveForegroundService;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 12
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
