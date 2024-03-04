.class public Lorg/light/bean/TTFaceOriginDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cls:I

.field public facePoint:[F

.field public facePointVisible:[F

.field public pitch:F

.field public roll:F

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbc

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lorg/light/bean/TTFaceOriginDataModel;->facePoint:[F

    const/16 v0, 0x5e

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lorg/light/bean/TTFaceOriginDataModel;->facePointVisible:[F

    return-void
.end method

.method public constructor <init>([F[FFFF)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/light/bean/TTFaceOriginDataModel;->facePoint:[F

    .line 6
    iput-object p2, p0, Lorg/light/bean/TTFaceOriginDataModel;->facePointVisible:[F

    .line 7
    iput p3, p0, Lorg/light/bean/TTFaceOriginDataModel;->pitch:F

    .line 8
    iput p4, p0, Lorg/light/bean/TTFaceOriginDataModel;->yaw:F

    .line 9
    iput p5, p0, Lorg/light/bean/TTFaceOriginDataModel;->roll:F

    return-void
.end method
