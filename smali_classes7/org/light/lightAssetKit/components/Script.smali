.class public Lorg/light/lightAssetKit/components/Script;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private aiRequire:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataRequire:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entityIDOffset:I

.field private scriptPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Script;->dataRequire:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/Script;->entityIDOffset:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    .line 12
    iput-object p3, p0, Lorg/light/lightAssetKit/components/Script;->dataRequire:Ljava/util/ArrayList;

    .line 13
    iput p4, p0, Lorg/light/lightAssetKit/components/Script;->entityIDOffset:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Script;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Script;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Script;->dataRequire:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Script;->dataRequire:Ljava/util/ArrayList;

    .line 6
    iget v0, v0, Lorg/light/lightAssetKit/components/Script;->entityIDOffset:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Script;->entityIDOffset:I

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAiRequire()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataRequire()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Script;->dataRequire:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntityIDOffset()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Script;->entityIDOffset:I

    return v0
.end method

.method public getScriptPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAiRequire(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Script;->aiRequire:Ljava/util/ArrayList;

    const-string v0, "aiRequire"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDataRequire(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Script;->dataRequire:Ljava/util/ArrayList;

    const-string v0, "dataRequire"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEntityIDOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Script;->entityIDOffset:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "entityIDOffset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScriptPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Script;->scriptPath:Ljava/lang/String;

    const-string v0, "scriptPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Script"

    return-object v0
.end method
