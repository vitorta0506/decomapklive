.class public final Lcom/tencent/qgame/animplayer/mix/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\n\"\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mix/Frame;",
        "",
        "index",
        "",
        "json",
        "Lorg/json/JSONObject;",
        "(ILorg/json/JSONObject;)V",
        "frame",
        "Lcom/tencent/qgame/animplayer/PointRect;",
        "getFrame",
        "()Lcom/tencent/qgame/animplayer/PointRect;",
        "setFrame",
        "(Lcom/tencent/qgame/animplayer/PointRect;)V",
        "getIndex",
        "()I",
        "mFrame",
        "getMFrame",
        "setMFrame",
        "mt",
        "getMt",
        "setMt",
        "(I)V",
        "srcId",
        "",
        "getSrcId",
        "()Ljava/lang/String;",
        "setSrcId",
        "(Ljava/lang/String;)V",
        "z",
        "getZ",
        "setZ",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private frame:Lcom/tencent/qgame/animplayer/PointRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final index:I

.field private mFrame:Lcom/tencent/qgame/animplayer/PointRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mt:I

.field private srcId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 8
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->index:I

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->srcId:Ljava/lang/String;

    const-string/jumbo p1, "srcId"

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "json.getString(\"srcId\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->srcId:Ljava/lang/String;

    const-string/jumbo p1, "z"

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->z:I

    const-string p1, "frame"

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/tencent/qgame/animplayer/PointRect;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {v0, v2, v4, v6, p1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->frame:Lcom/tencent/qgame/animplayer/PointRect;

    const-string p1, "mFrame"

    .line 7
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->mFrame:Lcom/tencent/qgame/animplayer/PointRect;

    const-string p1, "mt"

    .line 9
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->mt:I

    return-void
.end method


# virtual methods
.method public final getFrame()Lcom/tencent/qgame/animplayer/PointRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->frame:Lcom/tencent/qgame/animplayer/PointRect;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->index:I

    return v0
.end method

.method public final getMFrame()Lcom/tencent/qgame/animplayer/PointRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->mFrame:Lcom/tencent/qgame/animplayer/PointRect;

    return-object v0
.end method

.method public final getMt()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->mt:I

    return v0
.end method

.method public final getSrcId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->srcId:Ljava/lang/String;

    return-object v0
.end method

.method public final getZ()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->z:I

    return v0
.end method

.method public final setFrame(Lcom/tencent/qgame/animplayer/PointRect;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/PointRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->frame:Lcom/tencent/qgame/animplayer/PointRect;

    return-void
.end method

.method public final setMFrame(Lcom/tencent/qgame/animplayer/PointRect;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/PointRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->mFrame:Lcom/tencent/qgame/animplayer/PointRect;

    return-void
.end method

.method public final setMt(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->mt:I

    return-void
.end method

.method public final setSrcId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->srcId:Ljava/lang/String;

    return-void
.end method

.method public final setZ(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/Frame;->z:I

    return-void
.end method
