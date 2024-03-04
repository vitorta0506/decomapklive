.class public Lcom/gyailib/library/GYDetectCommonItemParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public age:I

.field public classifyConfidence:F

.field public classifyName:Ljava/lang/String;

.field public classifyType:Ljava/lang/String;

.field public confidence:F

.field public eulerAngle:[F

.field public frameConfidence:F

.field public frameH:F

.field public frameW:F

.field public frameX:F

.field public frameY:F

.field public gender:I

.field public heightMap:[F

.field public imageH:F

.field public imageW:F

.field public index:I

.field public itemId:I

.field public pointX:[F

.field public pointY:[F

.field public pointsCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyailib/library/GYDetectCommonItemParams;->itemId:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/gyailib/library/GYDetectCommonItemParams;->confidence:F

    .line 4
    iput v0, p0, Lcom/gyailib/library/GYDetectCommonItemParams;->pointsCount:I

    .line 5
    iput v0, p0, Lcom/gyailib/library/GYDetectCommonItemParams;->age:I

    .line 6
    iput v0, p0, Lcom/gyailib/library/GYDetectCommonItemParams;->gender:I

    return-void
.end method
