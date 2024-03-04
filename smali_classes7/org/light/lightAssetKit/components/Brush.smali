.class public Lorg/light/lightAssetKit/components/Brush;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private brushColor:Ljava/lang/String;

.field private brushImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private brushSize:I

.field private renderTarget:Ljava/lang/String;

.field private renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

.field private triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, "#FFFFFFFF"

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    .line 5
    sget-object v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->Line:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 6
    sget-object v0, Lorg/light/lightAssetKit/enums/BrushRenderType;->Static:Lorg/light/lightAssetKit/enums/BrushRenderType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushImages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/light/lightAssetKit/enums/BrushTriggerType;Lorg/light/lightAssetKit/enums/BrushRenderType;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lorg/light/lightAssetKit/enums/BrushTriggerType;",
            "Lorg/light/lightAssetKit/enums/BrushRenderType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, "#FFFFFFFF"

    .line 9
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    .line 12
    sget-object v0, Lorg/light/lightAssetKit/enums/BrushTriggerType;->Line:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 13
    sget-object v0, Lorg/light/lightAssetKit/enums/BrushRenderType;->Static:Lorg/light/lightAssetKit/enums/BrushRenderType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    .line 16
    iput p2, p0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    .line 17
    iput-object p3, p0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 19
    iput-object p5, p0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    .line 20
    iput-object p6, p0, Lorg/light/lightAssetKit/components/Brush;->brushImages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Brush;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Brush;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Brush;->brushImages:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushImages:Ljava/util/ArrayList;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBrushColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBrushImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBrushSize()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    return v0
.end method

.method public getRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderType()Lorg/light/lightAssetKit/enums/BrushRenderType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    return-object v0
.end method

.method public getTriggerType()Lorg/light/lightAssetKit/enums/BrushTriggerType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    return-object v0
.end method

.method public setBrushColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Brush;->brushColor:Ljava/lang/String;

    const-string v0, "brushColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBrushImages(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Brush;->brushImages:Ljava/util/ArrayList;

    const-string v0, "brushImages"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBrushSize(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Brush;->brushSize:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "brushSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Brush;->renderTarget:Ljava/lang/String;

    const-string v0, "renderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderType(Lorg/light/lightAssetKit/enums/BrushRenderType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Brush;->renderType:Lorg/light/lightAssetKit/enums/BrushRenderType;

    const-string v0, "renderType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTriggerType(Lorg/light/lightAssetKit/enums/BrushTriggerType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Brush;->triggerType:Lorg/light/lightAssetKit/enums/BrushTriggerType;

    const-string v0, "triggerType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Brush"

    return-object v0
.end method
