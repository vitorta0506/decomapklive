.class public Lorg/light/lightAssetKit/components/ColorItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public area:F

.field public b:F

.field public g:F

.field public h:F

.field public l:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorItem;->r:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorItem;->g:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorItem;->b:F

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorItem;->l:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorItem;->h:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorItem;->area:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lorg/light/lightAssetKit/components/ColorItem;->r:F

    .line 10
    iput p2, p0, Lorg/light/lightAssetKit/components/ColorItem;->g:F

    .line 11
    iput p3, p0, Lorg/light/lightAssetKit/components/ColorItem;->b:F

    .line 12
    iput p4, p0, Lorg/light/lightAssetKit/components/ColorItem;->l:F

    .line 13
    iput p5, p0, Lorg/light/lightAssetKit/components/ColorItem;->h:F

    .line 14
    iput p6, p0, Lorg/light/lightAssetKit/components/ColorItem;->area:F

    return-void
.end method
