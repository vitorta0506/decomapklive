.class public Lorg/light/lightAssetKit/components/CollisionShapeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public box_half_length_:Lorg/light/lightAssetKit/components/Vec3;

.field public capsule_height_:F

.field public capsule_radius_:F

.field public cylinder_height_:F

.field public cylinder_radius_:F

.field public local_position_:Lorg/light/lightAssetKit/components/Vec3;

.field public local_rotation_:Lorg/light/lightAssetKit/components/Vec3;

.field public shape_type_:Lorg/light/lightAssetKit/enums/kRigidBody3DShapeType;

.field public sphere_radius_:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->local_position_:Lorg/light/lightAssetKit/components/Vec3;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->local_rotation_:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    sget-object v0, Lorg/light/lightAssetKit/enums/kRigidBody3DShapeType;->Box:Lorg/light/lightAssetKit/enums/kRigidBody3DShapeType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->shape_type_:Lorg/light/lightAssetKit/enums/kRigidBody3DShapeType;

    .line 5
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->box_half_length_:Lorg/light/lightAssetKit/components/Vec3;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->sphere_radius_:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->capsule_radius_:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->capsule_height_:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->cylinder_radius_:F

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/CollisionShapeData;->cylinder_height_:F

    return-void
.end method
