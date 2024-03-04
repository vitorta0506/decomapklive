.class public Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;
.super Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultLocationHelper"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLocationListener:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field private mTimeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mTimeout:Ljava/lang/Runnable;

    const-string v0, "location"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationListener:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public hasLocationPermission()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public requestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V
    .locals 9

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->hasGps(Landroid/content/Context;)Z

    move-result v1

    const-string v7, "not enabled"

    const/16 v8, 0x3ed

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-interface {p2, v8, v7, p1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;->getTimeOut()I

    move-result p1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->hasLocationPermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-interface {p2, v8, v7, p1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationListener:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 10
    :cond_3
    new-instance v6, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;

    invoke-direct {v6, p0, p2}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;-><init>(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    iput-object v6, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationListener:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mTimeout:Ljava/lang/Runnable;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    invoke-interface {p2, v8, v7, p1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    :goto_1
    return-void
.end method
