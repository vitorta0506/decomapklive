.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private frameLineColor:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private isDecodeBarCode:Z

.field private isFullScreenScan:Z

.field private isPlayBeep:Z

.field private isShake:Z

.field private isShowAlbum:Z

.field private isShowFlashLight:Z

.field private isShowbottomLayout:Z

.field private reactColor:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private scanLineColor:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isPlayBeep:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShake:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowbottomLayout:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowFlashLight:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowAlbum:Z

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isDecodeBarCode:Z

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isFullScreenScan:Z

    const v0, 0x7f06033d

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->reactColor:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->frameLineColor:I

    const v0, 0x7f06034f

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->scanLineColor:I

    return-void
.end method


# virtual methods
.method public getFrameLineColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->frameLineColor:I

    return v0
.end method

.method public getReactColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->reactColor:I

    return v0
.end method

.method public getScanLineColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->scanLineColor:I

    return v0
.end method

.method public isDecodeBarCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isDecodeBarCode:Z

    return v0
.end method

.method public isFullScreenScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isFullScreenScan:Z

    return v0
.end method

.method public isPlayBeep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isPlayBeep:Z

    return v0
.end method

.method public isShake()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShake:Z

    return v0
.end method

.method public isShowAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowAlbum:Z

    return v0
.end method

.method public isShowFlashLight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowFlashLight:Z

    return v0
.end method

.method public isShowbottomLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowbottomLayout:Z

    return v0
.end method

.method public setDecodeBarCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isDecodeBarCode:Z

    return-void
.end method

.method public setFrameLineColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->frameLineColor:I

    return-void
.end method

.method public setFullScreenScan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isFullScreenScan:Z

    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isPlayBeep:Z

    return-void
.end method

.method public setReactColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->reactColor:I

    return-void
.end method

.method public setScanLineColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->scanLineColor:I

    return-void
.end method

.method public setShake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShake:Z

    return-void
.end method

.method public setShowAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowAlbum:Z

    return-void
.end method

.method public setShowFlashLight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowFlashLight:Z

    return-void
.end method

.method public setShowbottomLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isShowbottomLayout:Z

    return-void
.end method
