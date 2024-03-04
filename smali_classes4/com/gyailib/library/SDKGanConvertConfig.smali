.class public Lcom/gyailib/library/SDKGanConvertConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createOutTexture:Z

.field private kernelClPath:Ljava/lang/String;

.field private postProcessBlobNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postProcessEnable:Z

.field private postProcessFunc:Ljava/lang/String;

.field private preProcessEnable:Z

.field private preProcessFunc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->preProcessEnable:Z

    .line 3
    iput-boolean v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessEnable:Z

    .line 4
    iput-boolean v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->createOutTexture:Z

    return-void
.end method


# virtual methods
.method public getKernelClPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->kernelClPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPostProcessBlobNames()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessBlobNames:Ljava/util/List;

    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostProcessFunc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessFunc:Ljava/lang/String;

    return-object v0
.end method

.method public getPreProcessFunc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->preProcessFunc:Ljava/lang/String;

    return-object v0
.end method

.method public isCreateOutTexture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->createOutTexture:Z

    return v0
.end method

.method public isPostProcessEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessEnable:Z

    return v0
.end method

.method public isPreProcessEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gyailib/library/SDKGanConvertConfig;->preProcessEnable:Z

    return v0
.end method

.method public setCreateOutTexture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->createOutTexture:Z

    return-void
.end method

.method public setKernelClPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->kernelClPath:Ljava/lang/String;

    return-void
.end method

.method public setPostProcessBlobNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessBlobNames:Ljava/util/List;

    return-void
.end method

.method public setPostProcessEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessEnable:Z

    return-void
.end method

.method public setPostProcessFunc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->postProcessFunc:Ljava/lang/String;

    return-void
.end method

.method public setPreProcessEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->preProcessEnable:Z

    return-void
.end method

.method public setPreProcessFunc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gyailib/library/SDKGanConvertConfig;->preProcessFunc:Ljava/lang/String;

    return-void
.end method
