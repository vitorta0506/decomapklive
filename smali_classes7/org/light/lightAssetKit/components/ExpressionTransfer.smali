.class public Lorg/light/lightAssetKit/components/ExpressionTransfer;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private cropY:F

.field private driveType:I

.field private driveVideoPath:Ljava/lang/String;

.field private imageType:I

.field private inputResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isEffectEnable:Z

.field private originImagePath:Ljava/lang/String;

.field private resourcePath:Ljava/lang/String;

.field private userSelectImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->inputResources:Ljava/util/ArrayList;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->originImagePath:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->userSelectImagePath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveVideoPath:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->cropY:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->isEffectEnable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->inputResources:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->originImagePath:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->userSelectImagePath:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveVideoPath:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 15
    iput v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->cropY:F

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->isEffectEnable:Z

    .line 17
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/ExpressionTransfer;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->inputResources:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->inputResources:Ljava/util/ArrayList;

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->imageType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->imageType:I

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->originImagePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->originImagePath:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->userSelectImagePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->userSelectImagePath:Ljava/lang/String;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveType:I

    .line 9
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveVideoPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveVideoPath:Ljava/lang/String;

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->cropY:F

    iput v1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->cropY:F

    .line 11
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->isEffectEnable:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->isEffectEnable:Z

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCropY()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->cropY:F

    return v0
.end method

.method public getDriveType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveType:I

    return v0
.end method

.method public getDriveVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->imageType:I

    return v0
.end method

.method public getInputResources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->inputResources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsEffectEnable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->isEffectEnable:Z

    return v0
.end method

.method public getOriginImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->originImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSelectImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->userSelectImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public setCropY(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->cropY:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cropY"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDriveType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "driveType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDriveVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->driveVideoPath:Ljava/lang/String;

    const-string v0, "driveVideoPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->imageType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "imageType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputResources(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->inputResources:Ljava/util/ArrayList;

    const-string v0, "inputResources"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsEffectEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->isEffectEnable:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isEffectEnable"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOriginImagePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->originImagePath:Ljava/lang/String;

    const-string v0, "originImagePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->resourcePath:Ljava/lang/String;

    const-string v0, "resourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserSelectImagePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExpressionTransfer;->userSelectImagePath:Ljava/lang/String;

    const-string v0, "userSelectImagePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "ExpressionTransfer"

    return-object v0
.end method
