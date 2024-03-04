.class public Lcom/gyailib/library/GYDetectCommonResultStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:F

.field public items:[Lcom/gyailib/library/GYDetectCommonItemParams;

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initStruct(FFI)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/gyailib/library/GYDetectCommonResultStruct;->width:F

    .line 2
    iput p2, p0, Lcom/gyailib/library/GYDetectCommonResultStruct;->height:F

    .line 3
    new-array p1, p3, [Lcom/gyailib/library/GYDetectCommonItemParams;

    iput-object p1, p0, Lcom/gyailib/library/GYDetectCommonResultStruct;->items:[Lcom/gyailib/library/GYDetectCommonItemParams;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/gyailib/library/GYDetectCommonResultStruct;->items:[Lcom/gyailib/library/GYDetectCommonItemParams;

    new-instance v0, Lcom/gyailib/library/GYDetectCommonItemParams;

    invoke-direct {v0}, Lcom/gyailib/library/GYDetectCommonItemParams;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItem(II[F[F[F[FLjava/lang/String;Ljava/lang/String;FI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyailib/library/GYDetectCommonResultStruct;->items:[Lcom/gyailib/library/GYDetectCommonItemParams;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object v1, v0, p1

    iput p2, v1, Lcom/gyailib/library/GYDetectCommonItemParams;->pointsCount:I

    .line 3
    aget-object p2, v0, p1

    iput-object p3, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->pointX:[F

    .line 4
    aget-object p2, v0, p1

    iput-object p4, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->pointY:[F

    .line 5
    aget-object p2, v0, p1

    iput-object p5, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->heightMap:[F

    .line 6
    aget-object p2, v0, p1

    iput-object p6, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->eulerAngle:[F

    .line 7
    aget-object p2, v0, p1

    iput-object p7, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->classifyName:Ljava/lang/String;

    .line 8
    aget-object p2, v0, p1

    iput-object p8, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->classifyType:Ljava/lang/String;

    .line 9
    aget-object p2, v0, p1

    iput p9, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->classifyConfidence:F

    .line 10
    aget-object p1, v0, p1

    iput p10, p1, Lcom/gyailib/library/GYDetectCommonItemParams;->index:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemBase(IIFFFFFFII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyailib/library/GYDetectCommonResultStruct;->items:[Lcom/gyailib/library/GYDetectCommonItemParams;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object v1, v0, p1

    iput p2, v1, Lcom/gyailib/library/GYDetectCommonItemParams;->itemId:I

    .line 3
    aget-object p2, v0, p1

    iput p3, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->frameX:F

    .line 4
    aget-object p2, v0, p1

    iput p4, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->frameY:F

    .line 5
    aget-object p2, v0, p1

    iput p5, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->frameW:F

    .line 6
    aget-object p2, v0, p1

    iput p6, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->frameH:F

    .line 7
    aget-object p2, v0, p1

    iput p7, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->frameConfidence:F

    .line 8
    aget-object p2, v0, p1

    iput p8, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->confidence:F

    .line 9
    aget-object p2, v0, p1

    iput p9, p2, Lcom/gyailib/library/GYDetectCommonItemParams;->age:I

    .line 10
    aget-object p1, v0, p1

    iput p10, p1, Lcom/gyailib/library/GYDetectCommonItemParams;->gender:I

    :cond_1
    :goto_0
    return-void
.end method
