.class public Lcom/guochao/faceshow/aaspring/utils/location/LocationService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "11"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f1202fc

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f080359

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0136

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x30400000

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v2

    const/16 v3, 0x64

    .line 9
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static hasGps(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "location"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 2
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "network"

    .line 3
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static openGps(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f12094c

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    const v1, 0x7f120956

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private static realRequest(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->requestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    return-void
.end method

.method public static showFocusDialog(Landroidx/fragment/app/FragmentActivity;Lka/a$d;)V
    .locals 2

    .line 1
    new-instance v0, Lka/a;

    invoke-direct {v0}, Lka/a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lka/a;->m(Landroidx/fragment/app/FragmentActivity;)Lka/a;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lka/a;->f([Ljava/lang/String;)Lka/a;

    move-result-object p0

    const v0, 0x7f120964

    .line 4
    invoke-virtual {p0, v0}, Lka/a;->l(I)Lka/a;

    move-result-object p0

    const v0, 0x7f1208a3

    .line 5
    invoke-virtual {p0, v0}, Lka/a;->g(I)Lka/a;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lka/a;->e(Lka/a$e;)Lka/a;

    move-result-object p0

    invoke-virtual {p0}, Lka/a;->k()Lka/a;

    return-void
.end method

.method private startLocation()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "onLocationChangedListener"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/location/LocationService;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    invoke-virtual {v2, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->requestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    return-void
.end method

.method public static startRequestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p0

    const-string v1, "onLocationChangedListener"

    invoke-virtual {p0, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->realRequest(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->startLocation()V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
