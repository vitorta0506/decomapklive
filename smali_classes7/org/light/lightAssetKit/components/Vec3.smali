.class public Lorg/light/lightAssetKit/components/Vec3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Vec3;->x:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Vec3;->y:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Vec3;->z:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lorg/light/lightAssetKit/components/Vec3;->x:F

    .line 7
    iput p2, p0, Lorg/light/lightAssetKit/components/Vec3;->y:F

    .line 8
    iput p3, p0, Lorg/light/lightAssetKit/components/Vec3;->z:F

    return-void
.end method
