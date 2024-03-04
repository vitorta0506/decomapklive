.class public Lorg/light/lightAssetKit/components/Paint;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private brushColor:Ljava/lang/String;

.field private brushImage:Ljava/lang/String;

.field private brushSize:I

.field private canvasColor:Ljava/lang/String;

.field private paintMode:I

.field private renderTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, "#00000000"

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->canvasColor:Ljava/lang/String;

    const-string v0, "#FFFFFFFF"

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->brushColor:Ljava/lang/String;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Paint;->brushSize:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->brushImage:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->renderTarget:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/Paint;->paintMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Paint;->canvasColor:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lorg/light/lightAssetKit/components/Paint;->brushColor:Ljava/lang/String;

    .line 11
    iput p3, p0, Lorg/light/lightAssetKit/components/Paint;->brushSize:I

    .line 12
    iput-object p4, p0, Lorg/light/lightAssetKit/components/Paint;->brushImage:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lorg/light/lightAssetKit/components/Paint;->renderTarget:Ljava/lang/String;

    .line 14
    iput p6, p0, Lorg/light/lightAssetKit/components/Paint;->paintMode:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Paint;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Paint;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Paint;->canvasColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Paint;->canvasColor:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Paint;->brushColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Paint;->brushColor:Ljava/lang/String;

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Paint;->brushSize:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Paint;->brushSize:I

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Paint;->brushImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Paint;->brushImage:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Paint;->renderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Paint;->renderTarget:Ljava/lang/String;

    .line 8
    iget v0, v0, Lorg/light/lightAssetKit/components/Paint;->paintMode:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Paint;->paintMode:I

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBrushColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->brushColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBrushImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->brushImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBrushSize()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Paint;->brushSize:I

    return v0
.end method

.method public getCanvasColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->canvasColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPaintMode()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Paint;->paintMode:I

    return v0
.end method

.method public getRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Paint;->renderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public setBrushColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Paint;->brushColor:Ljava/lang/String;

    const-string v0, "brushColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBrushImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Paint;->brushImage:Ljava/lang/String;

    const-string v0, "brushImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBrushSize(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Paint;->brushSize:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "brushSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCanvasColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Paint;->canvasColor:Ljava/lang/String;

    const-string v0, "canvasColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPaintMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Paint;->paintMode:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "paintMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Paint;->renderTarget:Ljava/lang/String;

    const-string v0, "renderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Paint"

    return-object v0
.end method
