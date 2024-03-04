.class public final Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006J \u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAPathEntity;",
        "",
        "originValue",
        "",
        "(Ljava/lang/String;)V",
        "cachedPath",
        "Landroid/graphics/Path;",
        "replacedValue",
        "buildPath",
        "",
        "toPath",
        "operate",
        "finalPath",
        "method",
        "args",
        "Ljava/util/StringTokenizer;",
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
.field private cachedPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final replacedValue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, ","

    const-string v3, " "

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->replacedValue:Ljava/lang/String;

    return-void
.end method

.method private final operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V
    .locals 15

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const-string v12, "s"

    .line 3
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    if-nez v10, :cond_2

    .line 4
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_2
    if-ne v10, v13, :cond_3

    .line 5
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_3
    const/4 v12, 0x2

    if-ne v10, v12, :cond_4

    .line 6
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :cond_4
    const/4 v12, 0x3

    if-ne v10, v12, :cond_5

    .line 7
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    :cond_5
    const/4 v12, 0x4

    if-ne v10, v12, :cond_6

    .line 8
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    :cond_6
    const/4 v12, 0x5

    if-ne v10, v12, :cond_7

    .line 9
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    :cond_8
    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    .line 10
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-direct {v0, v9, v9, v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    const-string v1, "M"

    .line 11
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-direct {v0, v10, v11, v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    goto :goto_2

    :cond_9
    const-string v1, "m"

    .line 14
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 15
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 16
    new-instance v1, Lcom/opensource/svgaplayer/utils/SVGAPoint;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getX()F

    move-result v2

    add-float/2addr v2, v10

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getY()F

    move-result v0

    add-float/2addr v0, v11

    invoke-direct {v1, v2, v0, v9}, Lcom/opensource/svgaplayer/utils/SVGAPoint;-><init>(FFF)V

    move-object v14, v1

    goto :goto_3

    :cond_a
    :goto_2
    move-object v14, v0

    :goto_3
    const-string v0, "L"

    .line 17
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_b
    const-string v0, "l"

    .line 19
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 20
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_c
    :goto_4
    const-string v0, "C"

    .line 21
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    .line 22
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_5

    :cond_d
    const-string v0, "c"

    .line 23
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    .line 24
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    :cond_e
    :goto_5
    const-string v0, "Q"

    .line 25
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 26
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_6

    :cond_f
    const-string v0, "q"

    .line 27
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 28
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    :cond_10
    :goto_6
    const-string v0, "H"

    .line 29
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30
    invoke-virtual {v14}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getY()F

    move-result v0

    invoke-virtual {v7, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_11
    const-string v0, "h"

    .line 31
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32
    invoke-virtual {v7, v10, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_12
    :goto_7
    const-string v0, "V"

    .line 33
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    invoke-virtual {v14}, Lcom/opensource/svgaplayer/utils/SVGAPoint;->getX()F

    move-result v0

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :cond_13
    const-string/jumbo v0, "v"

    .line 35
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_14
    :goto_8
    const-string v0, "Z"

    .line 37
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    goto :goto_9

    :cond_15
    const-string/jumbo v0, "z"

    .line 39
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    :cond_16
    :goto_9
    return-void
.end method


# virtual methods
.method public final buildPath(Landroid/graphics/Path;)V
    .locals 8
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "toPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->cachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_6

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->replacedValue:Ljava/lang/String;

    const-string v3, "MLHVCSQRAZmlhvcsqraz"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, ""

    move-object v3, v2

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "segment"

    .line 6
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;->access$getVALID_METHODS$p()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v3, "Z"

    .line 8
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "z"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5, v3}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V

    :cond_3
    move-object v3, v5

    goto :goto_0

    .line 9
    :cond_4
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v6}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->operate(Landroid/graphics/Path;Ljava/lang/String;Ljava/util/StringTokenizer;)V

    goto :goto_0

    .line 10
    :cond_5
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->cachedPath:Landroid/graphics/Path;

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void

    .line 12
    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method
