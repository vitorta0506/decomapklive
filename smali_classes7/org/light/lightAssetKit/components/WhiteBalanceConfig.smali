.class public Lorg/light/lightAssetKit/components/WhiteBalanceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public temperature:F

.field public tint:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/WhiteBalanceConfig;->temperature:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/WhiteBalanceConfig;->tint:F

    return-void
.end method
