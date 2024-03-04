.class public Lorg/light/lightAssetKit/components/CurvesConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public highlightScale:Lorg/light/lightAssetKit/components/Vec3;

.field public midPoint:Lorg/light/lightAssetKit/components/Vec3;

.field public shadowGamma:Lorg/light/lightAssetKit/components/Vec3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CurvesConfig;->shadowGamma:Lorg/light/lightAssetKit/components/Vec3;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0, v1, v1, v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CurvesConfig;->midPoint:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0, v1, v1, v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CurvesConfig;->highlightScale:Lorg/light/lightAssetKit/components/Vec3;

    return-void
.end method
