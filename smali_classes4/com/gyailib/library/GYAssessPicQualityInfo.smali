.class public Lcom/gyailib/library/GYAssessPicQualityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public deviceParams:I

.field public framesCnt:I

.field public heightParams:F

.field public kBps:F

.field public secondsParams:F

.field public typePrams:I

.field public widthParams:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->typePrams:I

    return-void
.end method


# virtual methods
.method public initStruct(FFFFIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->kBps:F

    .line 2
    iput p2, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->widthParams:F

    .line 3
    iput p3, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->heightParams:F

    .line 4
    iput p4, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->secondsParams:F

    .line 5
    iput p5, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->deviceParams:I

    .line 6
    iput p6, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->typePrams:I

    .line 7
    iput p7, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->framesCnt:I

    return-void
.end method

.method public setGYAssessPicQualityInfo(FFFFIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->kBps:F

    .line 2
    iput p2, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->widthParams:F

    .line 3
    iput p3, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->heightParams:F

    .line 4
    iput p4, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->secondsParams:F

    .line 5
    iput p5, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->deviceParams:I

    .line 6
    iput p6, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->typePrams:I

    .line 7
    iput p7, p0, Lcom/gyailib/library/GYAssessPicQualityInfo;->framesCnt:I

    return-void
.end method
