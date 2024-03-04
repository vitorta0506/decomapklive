.class public Lorg/light/lightAssetKit/components/PreferredCoverTime;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private coverTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/PreferredCoverTime;->coverTime:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 4
    iput p1, p0, Lorg/light/lightAssetKit/components/PreferredCoverTime;->coverTime:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PreferredCoverTime;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PreferredCoverTime;

    .line 3
    iget v0, v0, Lorg/light/lightAssetKit/components/PreferredCoverTime;->coverTime:I

    iput v0, p0, Lorg/light/lightAssetKit/components/PreferredCoverTime;->coverTime:I

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCoverTime()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PreferredCoverTime;->coverTime:I

    return v0
.end method

.method public setCoverTime(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PreferredCoverTime;->coverTime:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "coverTime"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PreferredCoverTime"

    return-object v0
.end method
