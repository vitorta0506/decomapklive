.class public Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public offset:Lorg/light/lightAssetKit/components/Vec3;

.field public power:Lorg/light/lightAssetKit/components/Vec3;

.field public slope:Lorg/light/lightAssetKit/components/Vec3;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;->slope:Lorg/light/lightAssetKit/components/Vec3;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;->offset:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0, v1, v1, v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;->power:Lorg/light/lightAssetKit/components/Vec3;

    return-void
.end method
