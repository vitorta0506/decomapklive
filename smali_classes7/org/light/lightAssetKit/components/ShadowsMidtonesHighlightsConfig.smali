.class public Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public highlightsColor:Ljava/lang/String;

.field public highlightsWeight:F

.field public midtonesColor:Ljava/lang/String;

.field public midtonesWeight:F

.field public ranges:Lorg/light/lightAssetKit/components/Vec4;

.field public shadowsColor:Ljava/lang/String;

.field public shadowsWeight:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FFFFFF00"

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->shadowsColor:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->shadowsWeight:F

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->midtonesColor:Ljava/lang/String;

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->midtonesWeight:F

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->highlightsColor:Ljava/lang/String;

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->highlightsWeight:F

    .line 8
    new-instance v0, Lorg/light/lightAssetKit/components/Vec4;

    const v2, 0x3eaa7efa    # 0.333f

    const v3, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/light/lightAssetKit/components/Vec4;-><init>(FFFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ShadowsMidtonesHighlightsConfig;->ranges:Lorg/light/lightAssetKit/components/Vec4;

    return-void
.end method
