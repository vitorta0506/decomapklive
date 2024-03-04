.class public Lorg/light/lightAssetKit/components/Eraser;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private eraserSize:I

.field private eraserTarget:Ljava/lang/String;

.field private eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->Line:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/enums/BrushTriggerType;ILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    .line 6
    sget-object v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->Line:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 7
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 8
    iput p2, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserSize:I

    .line 9
    iput-object p3, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Eraser;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Eraser;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Eraser;->eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/Eraser;->eraserSize:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserSize:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEraserSize()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserSize:I

    return v0
.end method

.method public getEraserTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getEraserTriggerType()Lorg/light/lightAssetKit/enums/BrushTriggerType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    return-object v0
.end method

.method public setEraserSize(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserSize:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "eraserSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEraserTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTarget:Ljava/lang/String;

    const-string v0, "eraserTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEraserTriggerType(Lorg/light/lightAssetKit/enums/BrushTriggerType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Eraser;->eraserTriggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    const-string v0, "eraserTriggerType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Eraser"

    return-object v0
.end method
