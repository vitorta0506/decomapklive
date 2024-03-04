.class public Lorg/light/lightAssetKit/components/LiquefactionParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public direction:Lorg/light/lightAssetKit/enums/DirectionType;

.field public positionX:F

.field public positionY:F

.field public radiusX:F

.field public radiusY:F

.field public selected:Z

.field public strength:F

.field public symmetry:Z

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->radiusX:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->radiusY:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->positionX:F

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->positionY:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->strength:F

    .line 7
    sget-object v0, Lorg/light/lightAssetKit/enums/DirectionType;->Expand:Lorg/light/lightAssetKit/enums/DirectionType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->direction:Lorg/light/lightAssetKit/enums/DirectionType;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->symmetry:Z

    .line 9
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->selected:Z

    .line 10
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->visible:Z

    return-void
.end method

.method public constructor <init>(FFFFFLorg/light/lightAssetKit/enums/DirectionType;ZZZ)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->radiusX:F

    .line 13
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->radiusY:F

    .line 14
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->positionX:F

    .line 15
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->positionY:F

    .line 16
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->strength:F

    .line 17
    sget-object v0, Lorg/light/lightAssetKit/enums/DirectionType;->Expand:Lorg/light/lightAssetKit/enums/DirectionType;

    .line 18
    iput p1, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->radiusX:F

    .line 19
    iput p2, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->radiusY:F

    .line 20
    iput p3, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->positionX:F

    .line 21
    iput p4, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->positionY:F

    .line 22
    iput p5, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->strength:F

    .line 23
    iput-object p6, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->direction:Lorg/light/lightAssetKit/enums/DirectionType;

    .line 24
    iput-boolean p7, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->symmetry:Z

    .line 25
    iput-boolean p8, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->selected:Z

    .line 26
    iput-boolean p9, p0, Lorg/light/lightAssetKit/components/LiquefactionParam;->visible:Z

    return-void
.end method
