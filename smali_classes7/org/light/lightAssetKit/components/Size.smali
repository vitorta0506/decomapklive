.class public Lorg/light/lightAssetKit/components/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Size;->width:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Size;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/light/lightAssetKit/components/Size;->width:I

    .line 6
    iput p2, p0, Lorg/light/lightAssetKit/components/Size;->height:I

    return-void
.end method
