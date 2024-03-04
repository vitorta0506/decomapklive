.class public Lorg/light/lightAssetKit/components/DeviceTrackingComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private autoPlace:Z

.field private trackingMode:Lorg/light/lightAssetKit/enums/TrackingMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/TrackingMode;->AR_TRACKER_SURFACE:Lorg/light/lightAssetKit/enums/TrackingMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->trackingMode:Lorg/light/lightAssetKit/enums/TrackingMode;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->autoPlace:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->trackingMode:Lorg/light/lightAssetKit/enums/TrackingMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->trackingMode:Lorg/light/lightAssetKit/enums/TrackingMode;

    .line 4
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->autoPlace:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->autoPlace:Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAutoPlace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->autoPlace:Z

    return v0
.end method

.method public getTrackingMode()Lorg/light/lightAssetKit/enums/TrackingMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->trackingMode:Lorg/light/lightAssetKit/enums/TrackingMode;

    return-object v0
.end method

.method public setAutoPlace(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->autoPlace:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "autoPlace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackingMode(Lorg/light/lightAssetKit/enums/TrackingMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DeviceTrackingComponent;->trackingMode:Lorg/light/lightAssetKit/enums/TrackingMode;

    const-string v0, "trackingMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceTrackingComponent"

    return-object v0
.end method
