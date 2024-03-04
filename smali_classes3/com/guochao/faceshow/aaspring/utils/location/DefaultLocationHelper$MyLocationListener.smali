.class Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field mOnLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->mOnLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float p1, v1

    float-to-double v0, v0

    float-to-double v2, p1

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->create(DD)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$300(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->mOnLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->create(DD)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->mOnLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    const-string v0, "DefaultLocationHelper"

    const-string v1, "onProviderDisabled: "

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->create(DD)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->mOnLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    if-eqz p1, :cond_3

    const/16 v0, 0x3ed

    .line 9
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    const-string v2, "not enabled"

    invoke-interface {p1, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$300(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;->mOnLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "DefaultLocationHelper"

    const-string v0, "onProviderEnabled: "

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "DefaultLocationHelper"

    const-string p2, "onStatusChanged: "

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
