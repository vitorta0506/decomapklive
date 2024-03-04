.class public Lorg/light/lightAssetKit/components/VignetteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:Ljava/lang/String;

.field public enable:Z

.field public feather:F

.field public midPoint:F

.field public roundness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/VignetteConfig;->midPoint:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/VignetteConfig;->roundness:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/VignetteConfig;->feather:F

    const-string v0, "#000000FF"

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/VignetteConfig;->color:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/VignetteConfig;->enable:Z

    return-void
.end method
