.class public Lorg/light/lightAssetKit/components/Vec2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Vec2;->x:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Vec2;->y:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/light/lightAssetKit/components/Vec2;->x:F

    .line 6
    iput p2, p0, Lorg/light/lightAssetKit/components/Vec2;->y:F

    return-void
.end method
