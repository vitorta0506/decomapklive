.class public Lorg/light/lightAssetKit/LightAssetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetJsonString(Lorg/light/LightAsset;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/light/LightAsset;->getJsonString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
