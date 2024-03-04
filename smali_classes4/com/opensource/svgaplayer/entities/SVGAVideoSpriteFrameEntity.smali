.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "Lcom/opensource/svgaplayer/proto/FrameEntity;",
        "(Lcom/opensource/svgaplayer/proto/FrameEntity;)V",
        "alpha",
        "",
        "getAlpha",
        "()D",
        "setAlpha",
        "(D)V",
        "layout",
        "Lcom/opensource/svgaplayer/utils/SVGARect;",
        "getLayout",
        "()Lcom/opensource/svgaplayer/utils/SVGARect;",
        "setLayout",
        "(Lcom/opensource/svgaplayer/utils/SVGARect;)V",
        "maskPath",
        "Lcom/opensource/svgaplayer/entities/SVGAPathEntity;",
        "getMaskPath",
        "()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;",
        "setMaskPath",
        "(Lcom/opensource/svgaplayer/entities/SVGAPathEntity;)V",
        "shapes",
        "",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
        "getShapes",
        "()Ljava/util/List;",
        "setShapes",
        "(Ljava/util/List;)V",
        "transform",
        "Landroid/graphics/Matrix;",
        "getTransform",
        "()Landroid/graphics/Matrix;",
        "setTransform",
        "(Landroid/graphics/Matrix;)V",
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
.field private alpha:D

.field private layout:Lcom/opensource/svgaplayer/utils/SVGARect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transform:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/FrameEntity;)V
    .locals 12
    .param p1    # Lcom/opensource/svgaplayer/proto/FrameEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    .line 29
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->alpha:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    float-to-double v2, v0

    iput-wide v2, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    .line 30
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    if-nez v0, :cond_1

    goto :goto_5

    .line 31
    :cond_1
    new-instance v11, Lcom/opensource/svgaplayer/utils/SVGARect;

    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    float-to-double v3, v2

    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_2
    float-to-double v5, v2

    .line 32
    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_3
    float-to-double v7, v2

    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    float-to-double v9, v0

    move-object v2, v11

    .line 33
    invoke-direct/range {v2 .. v10}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    invoke-virtual {p0, v11}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setLayout(Lcom/opensource/svgaplayer/utils/SVGARect;)V

    .line 34
    :goto_5
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6

    goto :goto_c

    :cond_6
    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 35
    iget-object v5, v0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 36
    :goto_6
    iget-object v7, v0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-nez v7, :cond_8

    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 37
    :goto_7
    iget-object v8, v0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-nez v8, :cond_9

    const/4 v8, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 38
    :goto_8
    iget-object v9, v0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-nez v9, :cond_a

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 39
    :goto_9
    iget-object v10, v0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-nez v10, :cond_b

    const/4 v10, 0x0

    goto :goto_a

    :cond_b
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 40
    :goto_a
    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_b
    aput v5, v4, v3

    aput v8, v4, v2

    const/4 v5, 0x2

    aput v10, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    aput v9, v4, v5

    const/4 v5, 0x5

    aput v0, v4, v5

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v1, v4, v0

    const/16 v0, 0x8

    aput v6, v4, v0

    .line 41
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 42
    :goto_c
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->clipPath:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_e

    goto :goto_d

    :cond_e
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_f

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_10

    goto :goto_f

    .line 43
    :cond_10
    new-instance v1, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v1, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setMaskPath(Lcom/opensource/svgaplayer/entities/SVGAPathEntity;)V

    .line 44
    :goto_f
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->shapes:Ljava/util/List;

    const-string v0, "obj.shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 47
    check-cast v1, Lcom/opensource/svgaplayer/proto/ShapeEntity;

    .line 48
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;-><init>(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 49
    :cond_11
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 15
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "obj"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    const-string v2, "alpha"

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    const-string v2, "layout"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v14, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string/jumbo v5, "y"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string/jumbo v5, "width"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v5, "height"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    invoke-virtual {p0, v14}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setLayout(Lcom/opensource/svgaplayer/utils/SVGARect;)V

    :goto_0
    const-string/jumbo v2, "transform"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/16 v7, 0x9

    new-array v7, v7, [F

    const-string v8, "a"

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 9
    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v8, "b"

    .line 10
    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v8, "c"

    .line 11
    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v8, "d"

    .line 12
    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string/jumbo v10, "tx"

    .line 13
    invoke-virtual {v2, v10, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string/jumbo v10, "ty"

    .line 14
    invoke-virtual {v2, v10, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v4, v11

    const/4 v10, 0x0

    aput v4, v7, v10

    double-to-float v4, v5

    const/4 v5, 0x1

    aput v4, v7, v5

    const/4 v4, 0x2

    double-to-float v0, v0

    aput v0, v7, v4

    const/4 v0, 0x3

    double-to-float v1, v13

    aput v1, v7, v0

    const/4 v0, 0x4

    double-to-float v1, v8

    aput v1, v7, v0

    const/4 v0, 0x5

    double-to-float v1, v2

    aput v1, v7, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x7

    aput v1, v7, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v7, v0

    .line 15
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setValues([F)V

    :goto_1
    const-string v0, "clipPath"

    move-object/from16 v1, p1

    .line 16
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, p0

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    .line 18
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v2, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setMaskPath(Lcom/opensource/svgaplayer/entities/SVGAPathEntity;)V

    :goto_3
    const-string v2, "shapes"

    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_7

    .line 20
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v4, v6, 0x1

    .line 22
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_5

    .line 23
    :cond_6
    new-instance v6, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    invoke-direct {v6, v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    if-lt v4, v3, :cond_7

    goto :goto_6

    :cond_7
    move v6, v4

    goto :goto_4

    .line 24
    :cond_8
    :goto_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setShapes(Ljava/util/List;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public final getAlpha()D
    .locals 2

    iget-wide v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    return-wide v0
.end method

.method public final getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-object v0
.end method

.method public final getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    return-object v0
.end method

.method public final getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-object v0
.end method

.method public final getTransform()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final setAlpha(D)V
    .locals 0

    iput-wide p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    return-void
.end method

.method public final setLayout(Lcom/opensource/svgaplayer/utils/SVGARect;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/utils/SVGARect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-void
.end method

.method public final setMaskPath(Lcom/opensource/svgaplayer/entities/SVGAPathEntity;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    return-void
.end method

.method public final setShapes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-void
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    return-void
.end method
