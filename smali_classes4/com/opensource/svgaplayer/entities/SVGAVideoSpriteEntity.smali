.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "Lcom/opensource/svgaplayer/proto/SpriteEntity;",
        "(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V",
        "frames",
        "",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "getFrames",
        "()Ljava/util/List;",
        "imageKey",
        "",
        "getImageKey",
        "()Ljava/lang/String;",
        "matteKey",
        "getMatteKey",
        "getObj",
        "()Lcom/opensource/svgaplayer/proto/SpriteEntity;",
        "setObj",
        "release",
        "",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final matteKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private obj:Lcom/opensource/svgaplayer/proto/SpriteEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V
    .locals 5
    .param p1    # Lcom/opensource/svgaplayer/proto/SpriteEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->imageKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->imageKey:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->matteKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->matteKey:Ljava/lang/String;

    .line 18
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->frames:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Lcom/opensource/svgaplayer/proto/FrameEntity;

    .line 22
    new-instance v3, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;-><init>(Lcom/opensource/svgaplayer/proto/FrameEntity;)V

    .line 23
    invoke-virtual {v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 25
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->isKeep()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setShapes(Ljava/util/List;)V

    .line 27
    :cond_2
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 29
    :cond_4
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->frames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imageKey"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->imageKey:Ljava/lang/String;

    const-string v0, "matteKey"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->matteKey:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "frames"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-direct {v4, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;-><init>(Lorg/json/JSONObject;)V

    .line 9
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 11
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->isKeep()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setShapes(Ljava/util/List;)V

    .line 13
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-lt v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_0

    .line 14
    :cond_4
    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->frames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->frames:Ljava/util/List;

    return-object v0
.end method

.method public final getImageKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatteKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->matteKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getObj()Lcom/opensource/svgaplayer/proto/SpriteEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->obj:Lcom/opensource/svgaplayer/proto/SpriteEntity;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->obj:Lcom/opensource/svgaplayer/proto/SpriteEntity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/proto/SpriteEntity;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->obj:Lcom/opensource/svgaplayer/proto/SpriteEntity;

    return-void
.end method

.method public final setObj(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/proto/SpriteEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->obj:Lcom/opensource/svgaplayer/proto/SpriteEntity;

    return-void
.end method
