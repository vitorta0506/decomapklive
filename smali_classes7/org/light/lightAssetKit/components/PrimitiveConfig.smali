.class public Lorg/light/lightAssetKit/components/PrimitiveConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blendOrder:I

.field public castShadow:Z

.field public frustumCulling:Z

.field public materialResourceKey:Ljava/lang/String;

.field public meshResourceKey:Ljava/lang/String;

.field public primitiveIndex:I

.field public receiveShadow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->primitiveIndex:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->receiveShadow:Z

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->castShadow:Z

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->frustumCulling:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->materialResourceKey:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->meshResourceKey:Ljava/lang/String;

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/PrimitiveConfig;->blendOrder:I

    return-void
.end method
