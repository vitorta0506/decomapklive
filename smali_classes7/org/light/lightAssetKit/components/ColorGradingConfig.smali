.class public Lorg/light/lightAssetKit/components/ColorGradingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cdl:Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;

.field public channelMixer:Lorg/light/lightAssetKit/components/ChannelMixerConfig;

.field public colorGradingEnabled:Z

.field public contrast:F

.field public curves:Lorg/light/lightAssetKit/components/CurvesConfig;

.field public enable:Z

.field public saturation:F

.field public shadowMidHighlights:Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;

.field public toneMapping:Lorg/light/lightAssetKit/enums/ToneMapping;

.field public vibrance:F

.field public whiteBalance:Lorg/light/lightAssetKit/components/WhiteBalanceConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->colorGradingEnabled:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->enable:Z

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/WhiteBalanceConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/WhiteBalanceConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->whiteBalance:Lorg/light/lightAssetKit/components/WhiteBalanceConfig;

    .line 5
    new-instance v0, Lorg/light/lightAssetKit/components/ChannelMixerConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/ChannelMixerConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->channelMixer:Lorg/light/lightAssetKit/components/ChannelMixerConfig;

    .line 6
    new-instance v0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->shadowMidHighlights:Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;

    .line 7
    new-instance v0, Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->cdl:Lorg/light/lightAssetKit/components/SlopeOffsetPowerConfing;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->contrast:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->vibrance:F

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->saturation:F

    .line 11
    new-instance v0, Lorg/light/lightAssetKit/components/CurvesConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/CurvesConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->curves:Lorg/light/lightAssetKit/components/CurvesConfig;

    .line 12
    sget-object v0, Lorg/light/lightAssetKit/enums/ToneMapping;->ACES_LEGACY:Lorg/light/lightAssetKit/enums/ToneMapping;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ColorGradingConfig;->toneMapping:Lorg/light/lightAssetKit/enums/ToneMapping;

    return-void
.end method
