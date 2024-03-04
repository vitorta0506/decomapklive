.class public Lorg/light/lightAssetKit/components/BoneCollisionObj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public axis:I

.field public bind_id:I

.field public bind_name:Ljava/lang/String;

.field public collision_type:I

.field public group:I

.field public height:F

.field public offset_position:Lorg/light/lightAssetKit/components/Vec3;

.field public radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoneCollisionObj;->bind_name:Ljava/lang/String;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BoneCollisionObj;->offset_position:Lorg/light/lightAssetKit/components/Vec3;

    return-void
.end method
