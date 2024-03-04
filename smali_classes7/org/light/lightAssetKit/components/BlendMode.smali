.class public Lorg/light/lightAssetKit/components/BlendMode;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private alpha:F

.field private mode:Lorg/light/lightAssetKit/enums/BlendModeType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/BlendModeType;->Normal:Lorg/light/lightAssetKit/enums/BlendModeType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BlendMode;->mode:Lorg/light/lightAssetKit/enums/BlendModeType;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/BlendMode;->alpha:F

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/enums/BlendModeType;F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 5
    sget-object v0, Lorg/light/lightAssetKit/enums/BlendModeType;->Normal:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 6
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BlendMode;->mode:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 7
    iput p2, p0, Lorg/light/lightAssetKit/components/BlendMode;->alpha:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BlendMode;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BlendMode;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BlendMode;->mode:Lorg/light/lightAssetKit/enums/BlendModeType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BlendMode;->mode:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 4
    iget v0, v0, Lorg/light/lightAssetKit/components/BlendMode;->alpha:F

    iput v0, p0, Lorg/light/lightAssetKit/components/BlendMode;->alpha:F

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BlendMode;->alpha:F

    return v0
.end method

.method public getMode()Lorg/light/lightAssetKit/enums/BlendModeType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BlendMode;->mode:Lorg/light/lightAssetKit/enums/BlendModeType;

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BlendMode;->alpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "alpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMode(Lorg/light/lightAssetKit/enums/BlendModeType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BlendMode;->mode:Lorg/light/lightAssetKit/enums/BlendModeType;

    const-string v0, "mode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BlendMode"

    return-object v0
.end method
