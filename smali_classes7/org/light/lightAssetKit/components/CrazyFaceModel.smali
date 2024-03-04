.class public Lorg/light/lightAssetKit/components/CrazyFaceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blendAlpha:F

.field public closeEye:Z

.field public distortionAlpha:F

.field public faceMaskImage:Ljava/lang/String;

.field public faceMaskPoints:Ljava/lang/String;

.field public modelImage:Ljava/lang/String;

.field public modelImageFaceColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public modelImageFacePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->faceMaskImage:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->faceMaskPoints:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->modelImageFacePoints:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->modelImageFaceColor:Ljava/util/ArrayList;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->modelImage:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->blendAlpha:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->distortionAlpha:F

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/CrazyFaceModel;->closeEye:Z

    return-void
.end method
