.class public Lorg/light/lightAssetKit/components/BloomConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bloomColor:Ljava/lang/String;

.field public enable:Z

.field public levels:F

.field public strength:F

.field public thresholdValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BloomConfig;->enable:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/BloomConfig;->strength:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/BloomConfig;->levels:F

    const-string v1, "#FFFFFFFF"

    .line 5
    iput-object v1, p0, Lorg/light/lightAssetKit/components/BloomConfig;->bloomColor:Ljava/lang/String;

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/BloomConfig;->thresholdValue:F

    return-void
.end method
