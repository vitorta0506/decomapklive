.class public final Lcom/tencent/qgame/animplayer/mix/FrameAll;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mix/FrameAll;",
        "",
        "json",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "map",
        "Landroid/util/SparseArray;",
        "Lcom/tencent/qgame/animplayer/mix/FrameSet;",
        "getMap",
        "()Landroid/util/SparseArray;",
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
.field private final map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qgame/animplayer/mix/FrameSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/FrameAll;->map:Landroid/util/SparseArray;

    const-string v0, "frame"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, Lcom/tencent/qgame/animplayer/mix/FrameSet;

    invoke-direct {v3, v2}, Lcom/tencent/qgame/animplayer/mix/FrameSet;-><init>(Lorg/json/JSONObject;)V

    .line 7
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mix/FrameAll;->map:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/tencent/qgame/animplayer/mix/FrameSet;->getIndex()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qgame/animplayer/mix/FrameSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/FrameAll;->map:Landroid/util/SparseArray;

    return-object v0
.end method
