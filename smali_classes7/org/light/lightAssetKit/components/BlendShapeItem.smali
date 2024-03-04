.class public Lorg/light/lightAssetKit/components/BlendShapeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blendShapeName:Ljava/lang/String;

.field public blendShapeValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BlendShapeItem;->blendShapeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/BlendShapeItem;->blendShapeValue:F

    return-void
.end method
