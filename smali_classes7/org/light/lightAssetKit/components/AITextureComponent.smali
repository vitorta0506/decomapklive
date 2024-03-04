.class public Lorg/light/lightAssetKit/components/AITextureComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private aiInputType:Ljava/lang/String;

.field private aiTextureInputParams:Lcom/google/gson/JsonObject;

.field private aiTextureOutputParams:Lcom/google/gson/JsonObject;

.field private aiType:Ljava/lang/String;

.field private fps:I

.field private inputRenderTarget:Ljava/lang/String;

.field private isRealTimeResult:Z

.field private preLoad:Z

.field private renderTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->inputRenderTarget:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->resourcePath:Ljava/lang/String;

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->fps:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->preLoad:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureInputParams:Lcom/google/gson/JsonObject;

    .line 11
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureOutputParams:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    .line 16
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->inputRenderTarget:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->resourcePath:Ljava/lang/String;

    .line 18
    iput v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->fps:I

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->preLoad:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureInputParams:Lcom/google/gson/JsonObject;

    .line 22
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureOutputParams:Lcom/google/gson/JsonObject;

    .line 23
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    .line 26
    iput-object p4, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/AITextureComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/AITextureComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->inputRenderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->inputRenderTarget:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->resourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->resourcePath:Ljava/lang/String;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->fps:I

    iput v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->fps:I

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->preLoad:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->preLoad:Z

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureInputParams:Lcom/google/gson/JsonObject;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureInputParams:Lcom/google/gson/JsonObject;

    .line 12
    iget-object v0, v0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureOutputParams:Lcom/google/gson/JsonObject;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureOutputParams:Lcom/google/gson/JsonObject;

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAiInputType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    return-object v0
.end method

.method public getAiTextureInputParams()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureInputParams:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAiTextureOutputParams()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureOutputParams:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAiType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    return-object v0
.end method

.method public getFps()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->fps:I

    return v0
.end method

.method public getInputRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->inputRenderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRealTimeResult()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    return v0
.end method

.method public getPreLoad()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->preLoad:Z

    return v0
.end method

.method public getRenderTargetList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public setAiInputType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiInputType:Ljava/lang/String;

    const-string v0, "aiInputType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAiTextureInputParams(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureInputParams:Lcom/google/gson/JsonObject;

    const-string v0, "aiTextureInputParams"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAiTextureOutputParams(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiTextureOutputParams:Lcom/google/gson/JsonObject;

    const-string v0, "aiTextureOutputParams"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAiType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->aiType:Ljava/lang/String;

    const-string v0, "aiType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFps(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->fps:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fps"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->inputRenderTarget:Ljava/lang/String;

    const-string v0, "inputRenderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsRealTimeResult(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->isRealTimeResult:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isRealTimeResult"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPreLoad(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->preLoad:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "preLoad"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTargetList(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->renderTargetList:Ljava/util/ArrayList;

    const-string v0, "renderTargetList"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AITextureComponent;->resourcePath:Ljava/lang/String;

    const-string v0, "resourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "AITextureComponent"

    return-object v0
.end method
