.class public Lorg/light/lightAssetKit/components/AudioSource;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private audioSourceType:Lorg/light/lightAssetKit/enums/AudioSourceType;

.field private speed:F

.field private src:Ljava/lang/String;

.field private volume:F

.field private volumeEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/VolumeEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->volume:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->speed:F

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->volumeEffects:Ljava/util/ArrayList;

    .line 5
    sget-object v0, Lorg/light/lightAssetKit/enums/AudioSourceType;->Effect:Lorg/light/lightAssetKit/enums/AudioSourceType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->audioSourceType:Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/AudioSource;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/AudioSource;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/AudioSource;->volume:F

    iput v1, p0, Lorg/light/lightAssetKit/components/AudioSource;->volume:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/AudioSource;->speed:F

    iput v1, p0, Lorg/light/lightAssetKit/components/AudioSource;->speed:F

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AudioSource;->volumeEffects:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AudioSource;->volumeEffects:Ljava/util/ArrayList;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/AudioSource;->audioSourceType:Lorg/light/lightAssetKit/enums/AudioSourceType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/AudioSource;->audioSourceType:Lorg/light/lightAssetKit/enums/AudioSourceType;

    .line 7
    iget-object v0, v0, Lorg/light/lightAssetKit/components/AudioSource;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->src:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAudioSourceType()Lorg/light/lightAssetKit/enums/AudioSourceType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->audioSourceType:Lorg/light/lightAssetKit/enums/AudioSourceType;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->speed:F

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->volume:F

    return v0
.end method

.method public getVolumeEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/VolumeEffect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/AudioSource;->volumeEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAudioSourceType(Lorg/light/lightAssetKit/enums/AudioSourceType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AudioSource;->audioSourceType:Lorg/light/lightAssetKit/enums/AudioSourceType;

    const-string v0, "audioSourceType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AudioSource;->speed:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "speed"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AudioSource;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/AudioSource;->volume:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "volume"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeEffects(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/VolumeEffect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/AudioSource;->volumeEffects:Ljava/util/ArrayList;

    const-string v0, "volumeEffects"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "AudioSource"

    return-object v0
.end method
