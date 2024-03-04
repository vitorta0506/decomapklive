.class public final Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;
.super Lcom/tencent/live2/V2TXLivePlayerObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/player/tencent/TencentLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0006H\u0002J\u0008\u0010#\u001a\u00020\u0016H\u0002J\u001c\u0010$\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J$\u0010)\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010*\u001a\u00020+2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u001c\u0010,\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J.\u0010-\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010.\u001a\u00020\u000c2\u0008\u0010/\u001a\u0004\u0018\u00010\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u001a\u00100\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u00101\u001a\u00020\u000cH\u0016J$\u00102\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u00103\u001a\u00020\u000c2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u001c\u00106\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u001c\u00109\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u001c\u0010<\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u001c\u0010?\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J$\u0010@\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010*\u001a\u00020+2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\"\u0010A\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010B\u001a\u00020\u000c2\u0006\u0010C\u001a\u00020\u000cH\u0016J.\u0010D\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010.\u001a\u00020\u000c2\u0008\u0010/\u001a\u0004\u0018\u00010\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020\u0016H\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\u0010R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018\u00a8\u0006G"
    }
    d2 = {
        "Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;",
        "Lcom/tencent/live2/V2TXLivePlayerObserver;",
        "hostPlayer",
        "Lcom/guochao/player/tencent/TencentLivePlayer;",
        "(Lcom/guochao/player/tencent/TencentLivePlayer;)V",
        "error",
        "",
        "getError",
        "()Ljava/lang/String;",
        "lastNotify",
        "",
        "lastSeiSize",
        "",
        "lastStreamId",
        "getLastStreamId",
        "setLastStreamId",
        "(Ljava/lang/String;)V",
        "lastUrl",
        "getLastUrl",
        "setLastUrl",
        "list",
        "",
        "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
        "getList",
        "()Ljava/util/List;",
        "retryCount",
        "getRetryCount",
        "()I",
        "setRetryCount",
        "(I)V",
        "temp",
        "getTemp",
        "handleMixSei",
        "",
        "str",
        "obtain",
        "onAudioLoading",
        "player",
        "Lcom/tencent/live2/V2TXLivePlayer;",
        "extraInfo",
        "Landroid/os/Bundle;",
        "onAudioPlaying",
        "firstPlay",
        "",
        "onConnected",
        "onError",
        "code",
        "msg",
        "onPlayoutVolumeUpdate",
        "volume",
        "onReceiveSeiMessage",
        "payloadType",
        "data",
        "",
        "onRenderVideoFrame",
        "videoFrame",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;",
        "onSnapshotComplete",
        "image",
        "Landroid/graphics/Bitmap;",
        "onStatisticsUpdate",
        "statistics",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;",
        "onVideoLoading",
        "onVideoPlaying",
        "onVideoResolutionChanged",
        "width",
        "height",
        "onWarning",
        "recycle",
        "info",
        "lib_pusher_and_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final error:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastNotify:J

.field private lastSeiSize:I

.field private lastStreamId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private retryCount:I

.field private final temp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/player/tencent/TencentLivePlayer;)V
    .locals 1
    .param p1    # Lcom/guochao/player/tencent/TencentLivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hostPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePlayerObserver;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    const-string p1, "anchor normal stopped"

    .line 2
    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->error:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->list:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->temp:Ljava/util/List;

    return-void
.end method

.method private final handleMixSei(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v1, "{"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastNotify:J

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "d"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->list:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/player/base/ILivePlayer$StreamInfo;

    .line 8
    invoke-direct {p0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->recycle(Lcom/guochao/player/base/ILivePlayer$StreamInfo;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 12
    invoke-direct {p0}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->obtain()Lcom/guochao/player/base/ILivePlayer$StreamInfo;

    move-result-object v3

    const-string/jumbo v4, "t"

    .line 13
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setTop(I)V

    const-string v4, "l"

    .line 14
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setLeft(I)V

    const-string/jumbo v4, "w"

    .line 15
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setWidth(I)V

    const-string v4, "h"

    .line 16
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setHeight(I)V

    .line 17
    invoke-virtual {v3}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setRight(I)V

    .line 18
    invoke-virtual {v3}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->getTop()I

    move-result v4

    invoke-virtual {v3}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setBottom(I)V

    const-string v4, "s"

    .line 19
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "j.getString(\"s\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setStreamId(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->list:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 23
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->list:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onPublishStreamInfo(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final obtain()Lcom/guochao/player/base/ILivePlayer$StreamInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->temp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/player/base/ILivePlayer$StreamInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;-><init>(IIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->temp:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/base/ILivePlayer$StreamInfo;

    :goto_0
    return-object v0
.end method

.method private final recycle(Lcom/guochao/player/base/ILivePlayer$StreamInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setWidth(I)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setHeight(I)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setLeft(I)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setRight(I)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setTop(I)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/player/base/ILivePlayer$StreamInfo;->setBottom(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->temp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastStreamId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->retryCount:I

    return v0
.end method

.method public final getTemp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->temp:Ljava/util/List;

    return-object v0
.end method

.method public onAudioLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setPlaying$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 5
    iget-object p3, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-interface {p2, p3, v0}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onPlayFirstAudioFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConnected(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onConnected(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 4
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-interface {p2, v0, v1}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onConnectToServer(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onError(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2
    iget-object p4, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setStarting$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V

    const/4 p4, -0x8

    if-ne p2, p4, :cond_2

    .line 3
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->error:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p2}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 6
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-interface {p4, v1, v2, p3, v3}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onPlayEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->retryCount:I

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    .line 8
    iput v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->retryCount:I

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tencent/live2/V2TXLivePlayer;->startLivePlay(Ljava/lang/String;)I

    .line 10
    iget p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->retryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->retryCount:I

    :cond_2
    return-void
.end method

.method public onPlayoutVolumeUpdate(Lcom/tencent/live2/V2TXLivePlayer;I)V
    .locals 3
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onPlayoutVolumeUpdate(Lcom/tencent/live2/V2TXLivePlayer;I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 4
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    int-to-float v2, p2

    invoke-interface {v0, v1, v2}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onPlayerVolumeUpdate(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onReceiveSeiMessage(Lcom/tencent/live2/V2TXLivePlayer;I[B)V
    .locals 6
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p3

    .line 2
    iget v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastSeiSize:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastNotify:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->handleMixSei(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_2
    iput v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastSeiSize:I

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onReceiveSeiMessage(Lcom/tencent/live2/V2TXLivePlayer;I[B)V

    return-void
.end method

.method public onRenderVideoFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V
    .locals 0
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onRenderVideoFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V

    return-void
.end method

.method public onSnapshotComplete(Lcom/tencent/live2/V2TXLivePlayer;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onSnapshotComplete(Lcom/tencent/live2/V2TXLivePlayer;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onStatisticsUpdate(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V
    .locals 1
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onStatisticsUpdate(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    iget v0, p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->width:I

    invoke-static {p1, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setWidth$p(Lcom/guochao/player/tencent/TencentLivePlayer;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    iget p2, p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;->height:I

    invoke-static {p1, p2}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setHeight$p(Lcom/guochao/player/tencent/TencentLivePlayer;I)V

    :cond_0
    return-void
.end method

.method public onVideoLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getLastStreamId$p(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setLoading$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 6
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v0, v1, p2}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getLastStreamId$p(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setLoading$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setPlaying$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V

    .line 6
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p2}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 8
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-interface {p3, p1, v0}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onDrawFirstFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p2}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 11
    invoke-interface {v0, p1, p3}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onVideoPlaying(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onVideoResolutionChanged(Lcom/tencent/live2/V2TXLivePlayer;II)V
    .locals 2
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoResolutionChanged(Lcom/tencent/live2/V2TXLivePlayer;II)V

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1, p2}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setWidth$p(Lcom/guochao/player/tencent/TencentLivePlayer;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1, p3}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$setHeight$p(Lcom/guochao/player/tencent/TencentLivePlayer;I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->hostPlayer:Lcom/guochao/player/tencent/TencentLivePlayer;

    invoke-static {p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;

    .line 6
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/guochao/player/base/ILivePlayer$PlayEventListener;->onVideoSizeChanged(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWarning(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/tencent/live2/V2TXLivePlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onWarning(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setLastStreamId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setLastUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->lastUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->retryCount:I

    return-void
.end method
