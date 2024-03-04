.class public Lorg/light/lightAssetKit/components/SmartColorItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public g:I

.field public percent:F

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->r:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->g:I

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->b:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->percent:F

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->r:I

    .line 8
    iput p2, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->g:I

    .line 9
    iput p3, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->b:I

    .line 10
    iput p4, p0, Lorg/light/lightAssetKit/components/SmartColorItem;->percent:F

    return-void
.end method
