.class public Lcom/gyailib/library/ValidFacePhotoQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public expressionValid:I

.field public lightingOverExposure:I

.field public lightingUnderExposure:I

.field public poseValid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValidFacePhotoQuality(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyailib/library/ValidFacePhotoQuality;->lightingUnderExposure:I

    .line 2
    iput p2, p0, Lcom/gyailib/library/ValidFacePhotoQuality;->lightingOverExposure:I

    .line 3
    iput p3, p0, Lcom/gyailib/library/ValidFacePhotoQuality;->poseValid:I

    .line 4
    iput p4, p0, Lcom/gyailib/library/ValidFacePhotoQuality;->expressionValid:I

    return-void
.end method
