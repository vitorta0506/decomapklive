.class public interface abstract Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_ID:I = -0x1

.field public static final MEDIA_TYPE_AUDIO:I = 0x3

.field public static final MEDIA_TYPE_AV_MIX:I = 0x1

.field public static final MEDIA_TYPE_MUTABLE:I = 0x4

.field public static final MEDIA_TYPE_VIDEO:I = 0x2


# virtual methods
.method public abstract getExtraParam()Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getHttpHeader()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaType()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setExtraParam(Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;)V
    .param p1    # Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setHttpHeader(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
