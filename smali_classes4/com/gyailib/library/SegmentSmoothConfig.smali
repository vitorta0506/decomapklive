.class public Lcom/gyailib/library/SegmentSmoothConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blurRadius:F

.field public enableBlurThreshold:Z

.field public enableFrames:Z

.field public enableGuideSmooth:Z

.field public enableLineSmooth:Z

.field public enableSigmod:Z

.field public enableSmooth:Z

.field public enableThreshold:Z

.field public enableThresholdTrans:Z

.field public faceFeatureKey:Ljava/lang/String;

.field public maskResizeHeight:I

.field public maskResizeWidth:I

.field public postProcessMaxThreshold:F

.field public postProcessMaxThresholdTrans:F

.field public postProcessMinThreshold:F

.field public postProcessMinThresholdTrans:F

.field public preProcessMaxThreshold:F

.field public preProcessMinThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41100000    # 9.0f

    .line 2
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->blurRadius:F

    const/16 v0, 0x1e0

    .line 3
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->maskResizeWidth:I

    .line 4
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->maskResizeHeight:I

    const v0, 0x3f19999a    # 0.6f

    .line 5
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->preProcessMaxThreshold:F

    const v1, 0x3ecccccd    # 0.4f

    .line 6
    iput v1, p0, Lcom/gyailib/library/SegmentSmoothConfig;->preProcessMinThreshold:F

    .line 7
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMaxThreshold:F

    .line 8
    iput v1, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMinThreshold:F

    .line 9
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMaxThresholdTrans:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 10
    iput v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMinThresholdTrans:F

    return-void
.end method


# virtual methods
.method public getBlurRadius()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->blurRadius:F

    return v0
.end method

.method public getEnableBlurThreshold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableBlurThreshold:Z

    return v0
.end method

.method public getEnableFrames()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableFrames:Z

    return v0
.end method

.method public getEnableGuideSmooth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableGuideSmooth:Z

    return v0
.end method

.method public getEnableLineSmooth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableLineSmooth:Z

    return v0
.end method

.method public getEnableSigmod()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableSigmod:Z

    return v0
.end method

.method public getEnableSmooth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableSmooth:Z

    return v0
.end method

.method public getEnableThreshold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableThreshold:Z

    return v0
.end method

.method public getEnableThresholdTrans()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->enableThresholdTrans:Z

    return v0
.end method

.method public getFaceFeatureKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->faceFeatureKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskResizeHeight()I
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->maskResizeHeight:I

    return v0
.end method

.method public getMaskResizeWidth()I
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->maskResizeWidth:I

    return v0
.end method

.method public getPostProcessMaxThreshold()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMaxThreshold:F

    return v0
.end method

.method public getPostProcessMaxThresholdTrans()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMaxThresholdTrans:F

    return v0
.end method

.method public getPostProcessMinThreshold()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMinThreshold:F

    return v0
.end method

.method public getPostProcessMinThresholdTrans()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->postProcessMinThresholdTrans:F

    return v0
.end method

.method public getPreProcessMaxThreshold()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->preProcessMaxThreshold:F

    return v0
.end method

.method public getPreProcessMinThreshold()F
    .locals 1

    iget v0, p0, Lcom/gyailib/library/SegmentSmoothConfig;->preProcessMinThreshold:F

    return v0
.end method
