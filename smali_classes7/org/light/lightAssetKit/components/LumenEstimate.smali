.class public Lorg/light/lightAssetKit/components/LumenEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cast_shadows:Z

.field public color_rgb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public direction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public env_rotation:F

.field public ibl_path:Ljava/lang/String;

.field public inner_angle:F

.field public intensity:F

.field public irradiance_path:Ljava/lang/String;

.field public light_type:I

.field public outer_angle:F

.field public position:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public radius:F

.field public shadow_map_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LumenEstimate;->position:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LumenEstimate;->color_rgb:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LumenEstimate;->direction:Ljava/util/ArrayList;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/LumenEstimate;->ibl_path:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/LumenEstimate;->irradiance_path:Ljava/lang/String;

    return-void
.end method
