.class public Lorg/light/lightAssetKit/components/EntityIdentifier;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->id:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->name:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->id:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/EntityIdentifier;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/EntityIdentifier;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/EntityIdentifier;->id:I

    iput v1, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->id:I

    .line 4
    iget-object v0, v0, Lorg/light/lightAssetKit/components/EntityIdentifier;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->name:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->id:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/EntityIdentifier;->name:Ljava/lang/String;

    const-string v0, "name"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "EntityIdentifier"

    return-object v0
.end method
