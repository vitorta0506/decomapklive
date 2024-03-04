.class public final Lcom/tencent/qgame/animplayer/AnimConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;,
        Lcom/tencent/qgame/animplayer/AnimConfigManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u0000 #2\u00020\u0001:\u0002\"#B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015J \u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J&\u0010 \u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/AnimConfigManager;",
        "",
        "player",
        "Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "getConfig",
        "()Lcom/tencent/qgame/animplayer/AnimConfig;",
        "setConfig",
        "(Lcom/tencent/qgame/animplayer/AnimConfig;)V",
        "isParsingConfig",
        "",
        "()Z",
        "setParsingConfig",
        "(Z)V",
        "getPlayer",
        "()Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "defaultConfig",
        "",
        "_videoWidth",
        "",
        "_videoHeight",
        "parse",
        "fileContainer",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "defaultVideoMode",
        "defaultFps",
        "parseBoxHead",
        "Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;",
        "boxHead",
        "",
        "parseConfig",
        "enableVersion1",
        "BoxHead",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/AnimConfigManager$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.AnimConfigManager"


# instance fields
.field private config:Lcom/tencent/qgame/animplayer/AnimConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isParsingConfig:Z

.field private final player:Lcom/tencent/qgame/animplayer/AnimPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/AnimConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->Companion:Lcom/tencent/qgame/animplayer/AnimConfigManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AnimPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    return-void
.end method

.method private final parse(Lcom/tencent/qgame/animplayer/file/IFileContainer;II)Z
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/qgame/animplayer/AnimConfig;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    .line 3
    invoke-interface {p1}, Lcom/tencent/qgame/animplayer/file/IFileContainer;->startRandomRead()V

    const/16 v1, 0x8

    new-array v2, v1, [B

    const-wide/16 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    .line 4
    invoke-interface {p1, v2, v5, v1}, Lcom/tencent/qgame/animplayer/file/IFileContainer;->read([BII)I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 5
    invoke-direct {p0, v2}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->parseBoxHead([B)Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v6}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "vapc"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {v6, v3, v4}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->setStartIndex(J)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v6}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->getLength()I

    move-result v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    .line 9
    invoke-virtual {v6}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->getLength()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    invoke-interface {p1, v5, v6}, Lcom/tencent/qgame/animplayer/file/IFileContainer;->skip(J)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 10
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimConfigManager"

    const-string/jumbo v2, "vapc box head not found"

    invoke-virtual {p1, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setDefaultConfig(Z)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setDefaultVideoMode(I)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/tencent/qgame/animplayer/AnimConfig;->setFps(I)V

    .line 14
    iget-object p2, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getFps()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setFps(I)V

    return p1

    .line 15
    :cond_2
    invoke-virtual {v6}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->getLength()I

    move-result p2

    sub-int/2addr p2, v1

    new-array v1, p2, [B

    .line 16
    invoke-interface {p1, v1, v5, p2}, Lcom/tencent/qgame/animplayer/file/IFileContainer;->read([BII)I

    .line 17
    invoke-interface {p1}, Lcom/tencent/qgame/animplayer/file/IFileContainer;->closeRandomRead()V

    const-string p1, "UTF-8"

    .line 18
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v2, "Charset.forName(\"UTF-8\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v5, p2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 19
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setJsonConfig(Lorg/json/JSONObject;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->parse(Lorg/json/JSONObject;)Z

    move-result p1

    if-lez p3, :cond_3

    .line 22
    invoke-virtual {v0, p3}, Lcom/tencent/qgame/animplayer/AnimConfig;->setFps(I)V

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getFps()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setFps(I)V

    return p1
.end method

.method private final parseBoxHead([B)Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;
    .locals 4

    .line 1
    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;-><init>()V

    const/4 v2, 0x0

    .line 3
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    const/4 v3, 0x1

    .line 4
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    .line 5
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    .line 6
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->setLength(I)V

    const-string v1, "US-ASCII"

    .line 8
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "Charset.forName(\"US-ASCII\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/AnimConfigManager$BoxHead;->setType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final defaultConfig(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setVideoWidth(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setVideoHeight(I)V

    .line 5
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getDefaultVideoMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 6
    div-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    .line 8
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v4, v4, p2, v1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    .line 9
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v4, v1, v2}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    .line 11
    div-int/2addr p2, v3

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    .line 12
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v4, v4, p2, v1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    .line 13
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-direct {p1, v4, p2, v1, v2}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    goto/16 :goto_0

    .line 14
    :cond_2
    div-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    .line 15
    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    .line 16
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v4, v4, p2, v1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    .line 17
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v4, v1, v2}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    .line 19
    div-int/2addr p2, v3

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    .line 20
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v4, v4, p2, v1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    .line 21
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-direct {p1, v4, p2, v1, v2}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    goto :goto_0

    .line 22
    :cond_4
    div-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    .line 24
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v4, v4, p2, v1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    .line 25
    new-instance p1, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v4, v1, v2}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/PointRect;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    return-object v0
.end method

.method public final getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    return-object v0
.end method

.method public final isParsingConfig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z

    return v0
.end method

.method public final parseConfig(Lcom/tencent/qgame/animplayer/file/IFileContainer;ZII)I
    .locals 8
    .param p1    # Lcom/tencent/qgame/animplayer/file/IFileContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "AnimPlayer.AnimConfigManager"

    const/4 v1, 0x1

    const/16 v2, 0x2715

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3
    invoke-direct {p0, p1, p3, p4}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->parse(Lcom/tencent/qgame/animplayer/file/IFileContainer;II)Z

    move-result p1

    .line 4
    sget-object p3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseConfig cost="

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms enableVersion1="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " result="

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 5
    iput-boolean v3, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z

    return v2

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig()Z

    move-result p1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    .line 7
    iput-boolean v3, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z

    return v2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-virtual {p2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean v3, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 11
    sget-object p2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "parseConfig error "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput-boolean v3, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z

    return v2
.end method

.method public final setConfig(Lcom/tencent/qgame/animplayer/AnimConfig;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->config:Lcom/tencent/qgame/animplayer/AnimConfig;

    return-void
.end method

.method public final setParsingConfig(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimConfigManager;->isParsingConfig:Z

    return-void
.end method
