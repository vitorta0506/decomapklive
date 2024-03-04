.class public Lorg/light/lightAssetKit/components/Rect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Rect;->bottom:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Rect;->left:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Rect;->right:F

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/Rect;->top:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lorg/light/lightAssetKit/components/Rect;->bottom:F

    .line 8
    iput p2, p0, Lorg/light/lightAssetKit/components/Rect;->left:F

    .line 9
    iput p3, p0, Lorg/light/lightAssetKit/components/Rect;->right:F

    .line 10
    iput p4, p0, Lorg/light/lightAssetKit/components/Rect;->top:F

    return-void
.end method
