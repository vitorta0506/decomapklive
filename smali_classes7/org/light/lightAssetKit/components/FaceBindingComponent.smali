.class public Lorg/light/lightAssetKit/components/FaceBindingComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private posOffset:Lorg/light/lightAssetKit/components/Vec3;

.field private trackingType:Lorg/light/lightAssetKit/enums/BindTrackingType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/BindTrackingType;->kFaceBindTypeFace:Lorg/light/lightAssetKit/enums/BindTrackingType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->trackingType:Lorg/light/lightAssetKit/enums/BindTrackingType;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->posOffset:Lorg/light/lightAssetKit/components/Vec3;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/FaceBindingComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/FaceBindingComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->trackingType:Lorg/light/lightAssetKit/enums/BindTrackingType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->trackingType:Lorg/light/lightAssetKit/enums/BindTrackingType;

    .line 4
    iget-object v0, v0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->posOffset:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->posOffset:Lorg/light/lightAssetKit/components/Vec3;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getPosOffset()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->posOffset:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getTrackingType()Lorg/light/lightAssetKit/enums/BindTrackingType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->trackingType:Lorg/light/lightAssetKit/enums/BindTrackingType;

    return-object v0
.end method

.method public setPosOffset(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->posOffset:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "posOffset"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackingType(Lorg/light/lightAssetKit/enums/BindTrackingType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceBindingComponent;->trackingType:Lorg/light/lightAssetKit/enums/BindTrackingType;

    const-string v0, "trackingType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceBindingComponent"

    return-object v0
.end method
