.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;,
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;,
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0002-.B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u0002\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R:\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00082\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u001a@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u001e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006/"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity;",
        "(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V",
        "<set-?>",
        "",
        "",
        "args",
        "getArgs",
        "()Ljava/util/Map;",
        "isKeep",
        "",
        "()Z",
        "shapePath",
        "Landroid/graphics/Path;",
        "getShapePath",
        "()Landroid/graphics/Path;",
        "setShapePath",
        "(Landroid/graphics/Path;)V",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;",
        "styles",
        "getStyles",
        "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;",
        "Landroid/graphics/Matrix;",
        "transform",
        "getTransform",
        "()Landroid/graphics/Matrix;",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;",
        "type",
        "getType",
        "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;",
        "buildPath",
        "",
        "checkValueRange",
        "",
        "color",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;",
        "Lorg/json/JSONArray;",
        "parseArgs",
        "parseStyles",
        "parseTransform",
        "parseType",
        "Styles",
        "Type",
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
.field private args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapePath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transform:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/proto/ShapeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 9
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseType(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseArgs(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseStyles(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseTransform(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 3
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseType(Lorg/json/JSONObject;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseArgs(Lorg/json/JSONObject;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseStyles(Lorg/json/JSONObject;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseTransform(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F
    .locals 3

    .line 5
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 6
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_1
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 7
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 8
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_3
    cmpg-float p1, v1, v2

    if-gtz p1, :cond_4

    const/high16 v2, 0x437f0000    # 255.0f

    :cond_4
    return v2
.end method

.method private final checkValueRange(Lorg/json/JSONArray;)F
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private final parseArgs(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 7

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_0
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "x"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    goto :goto_5

    .line 12
    :cond_2
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->x:Ljava/lang/Float;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->y:Ljava/lang/Float;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusX:Ljava/lang/Float;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "radiusX"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusY:Ljava/lang/Float;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v5, "radiusY"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_5
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    if-nez p1, :cond_7

    goto :goto_b

    .line 17
    :cond_7
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->x:Ljava/lang/Float;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->y:Ljava/lang/Float;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->width:Ljava/lang/Float;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->height:Ljava/lang/Float;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->cornerRadius:Ljava/lang/Float;

    if-nez p1, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_a
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "cornerRadius"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_b
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    return-void
.end method

.method private final parseArgs(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "args"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string/jumbo v2, "values.keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    :goto_1
    return-void
.end method

.method private final parseStyles(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 8

    .line 28
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->styles:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    if-nez p1, :cond_0

    goto/16 :goto_11

    .line 29
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;-><init>()V

    .line 30
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->fill:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_4

    .line 31
    :cond_1
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v3

    .line 32
    iget-object v4, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_0
    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 33
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_1
    mul-float v5, v5, v3

    float-to-int v5, v5

    .line 34
    iget-object v6, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_2
    mul-float v6, v6, v3

    float-to-int v6, v6

    .line 35
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_3
    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 36
    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setFill$com_opensource_svgaplayer(I)V

    .line 37
    :goto_4
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->stroke:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    if-nez v1, :cond_6

    goto :goto_9

    .line 38
    :cond_6
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v3

    .line 39
    iget-object v4, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_5
    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 40
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-nez v5, :cond_8

    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_6
    mul-float v5, v5, v3

    float-to-int v5, v5

    .line 41
    iget-object v6, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-nez v6, :cond_9

    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_7
    mul-float v6, v6, v3

    float-to-int v6, v6

    .line 42
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_8
    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 43
    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStroke$com_opensource_svgaplayer(I)V

    .line 44
    :goto_9
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->strokeWidth:Ljava/lang/Float;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_a
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStrokeWidth$com_opensource_svgaplayer(F)V

    .line 45
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineCap:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;

    const-string v3, "round"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_c

    goto :goto_b

    .line 46
    :cond_c
    sget-object v7, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_f

    if-eq v1, v5, :cond_e

    if-eq v1, v4, :cond_d

    goto :goto_b

    :cond_d
    const-string/jumbo v1, "square"

    .line 47
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_b

    .line 48
    :cond_e
    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    const-string v1, "butt"

    .line 49
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 50
    :goto_b
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineJoin:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    if-nez v1, :cond_10

    goto :goto_c

    .line 51
    :cond_10
    sget-object v7, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_13

    if-eq v1, v5, :cond_12

    if-eq v1, v4, :cond_11

    goto :goto_c

    .line 52
    :cond_11
    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    const-string v1, "miter"

    .line 53
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    const-string v1, "bevel"

    .line 54
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 55
    :goto_c
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->miterLimit:Ljava/lang/Float;

    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_d
    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setMiterLimit$com_opensource_svgaplayer(I)V

    new-array v1, v4, [F

    .line 56
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineDash$com_opensource_svgaplayer([F)V

    .line 57
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashI:Ljava/lang/Float;

    if-nez v1, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 58
    :goto_e
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashII:Ljava/lang/Float;

    if-nez v1, :cond_16

    goto :goto_f

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    aput v1, v2, v6

    .line 59
    :goto_f
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashIII:Ljava/lang/Float;

    if-nez p1, :cond_17

    goto :goto_10

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v1

    aput p1, v1, v5

    .line 60
    :goto_10
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    :goto_11
    return-void
.end method

.method private final parseStyles(Lorg/json/JSONObject;)V
    .locals 14

    const-string/jumbo v0, "styles"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;-><init>()V

    const-string v1, "fill"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 5
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lorg/json/JSONArray;)F

    move-result v7

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    float-to-double v10, v7

    mul-double v8, v8, v10

    double-to-int v7, v8

    .line 7
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    mul-double v8, v8, v10

    double-to-int v8, v8

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v12

    mul-double v12, v12, v10

    double-to-int v9, v12

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v12

    mul-double v12, v12, v10

    double-to-int v1, v12

    .line 10
    invoke-static {v7, v8, v9, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setFill$com_opensource_svgaplayer(I)V

    :cond_2
    :goto_0
    const-string/jumbo v1, "stroke"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 13
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lorg/json/JSONArray;)F

    move-result v4

    .line 14
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v7

    float-to-double v3, v4

    mul-double v7, v7, v3

    double-to-int v7, v7

    .line 15
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    mul-double v8, v8, v3

    double-to-int v8, v8

    .line 16
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    mul-double v9, v9, v3

    double-to-int v5, v9

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 18
    invoke-static {v7, v8, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStroke$com_opensource_svgaplayer(I)V

    :cond_4
    :goto_1
    const-string/jumbo v1, "strokeWidth"

    const-wide/16 v2, 0x0

    .line 19
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStrokeWidth$com_opensource_svgaplayer(F)V

    const-string v1, "lineCap"

    const-string v4, "butt"

    .line 20
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "it.optString(\"lineCap\", \"butt\")"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    const-string v1, "lineJoin"

    const-string v4, "miter"

    .line 21
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "it.optString(\"lineJoin\", \"miter\")"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    const-string v1, "miterLimit"

    .line 22
    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setMiterLimit$com_opensource_svgaplayer(I)V

    const-string v1, "lineDash"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineDash$com_opensource_svgaplayer([F)V

    .line 25
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    :goto_2
    add-int/lit8 v4, v6, 0x1

    .line 26
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v5

    invoke-virtual {p1, v6, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v5, v6

    if-lt v4, v1, :cond_6

    goto :goto_3

    :cond_6
    move v6, v4

    goto :goto_2

    .line 27
    :cond_7
    :goto_3
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    :goto_4
    return-void
.end method

.method private final parseTransform(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 10

    .line 11
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 12
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 13
    iget-object v2, p1, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 14
    :goto_0
    iget-object v4, p1, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 15
    :goto_1
    iget-object v6, p1, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 16
    :goto_2
    iget-object v7, p1, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-nez v7, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 17
    :goto_3
    iget-object v8, p1, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 18
    :goto_4
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_5
    const/4 v9, 0x0

    aput v2, v1, v9

    const/4 v2, 0x1

    aput v6, v1, v2

    const/4 v2, 0x2

    aput v8, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    aput p1, v1, v2

    const/4 p1, 0x6

    aput v5, v1, p1

    const/4 p1, 0x7

    aput v5, v1, p1

    const/16 p1, 0x8

    aput v3, v1, p1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 20
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    :goto_6
    return-void
.end method

.method private final parseTransform(Lorg/json/JSONObject;)V
    .locals 16

    const-string/jumbo v0, "transform"

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [F

    const-string v3, "a"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v3, "b"

    const-wide/16 v8, 0x0

    .line 4
    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v3, "c"

    .line 5
    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-string v3, "d"

    .line 6
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-string/jumbo v5, "tx"

    .line 7
    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-string/jumbo v5, "ty"

    .line 8
    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const/4 v0, 0x0

    double-to-float v5, v6

    aput v5, v2, v0

    const/4 v0, 0x1

    double-to-float v5, v12

    aput v5, v2, v0

    const/4 v0, 0x2

    double-to-float v5, v14

    aput v5, v2, v0

    const/4 v0, 0x3

    double-to-float v5, v10

    aput v5, v2, v0

    const/4 v0, 0x4

    double-to-float v3, v3

    aput v3, v2, v0

    const/4 v0, 0x5

    double-to-float v3, v8

    aput v3, v2, v0

    const/4 v0, 0x6

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v0, 0x7

    aput v3, v2, v0

    const/16 v0, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    move-object/from16 v0, p0

    .line 10
    iput-object v1, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method

.method private final parseType(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .locals 1

    .line 6
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->type:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    if-nez p1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 8
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 9
    :cond_2
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    .line 10
    :cond_3
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    .line 11
    :cond_4
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    :goto_1
    return-void
.end method

.method private final parseType(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "shape"

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_1
    const-string v0, "rect"

    .line 3
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_2
    const-string v0, "ellipse"

    .line 4
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_0

    :cond_3
    const-string v0, "keep"

    .line 5
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final buildPath()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_2
    if-nez v2, :cond_3

    goto/16 :goto_11

    .line 5
    :cond_3
    new-instance v0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v0, v2}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    goto/16 :goto_11

    .line 6
    :cond_4
    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    const-string/jumbo v3, "y"

    const-string/jumbo v4, "x"

    if-ne v0, v1, :cond_11

    .line 7
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/Number;

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_7

    return-void

    .line 8
    :cond_7
    iget-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_9

    check-cast v1, Ljava/lang/Number;

    goto :goto_4

    :cond_9
    move-object v1, v2

    :goto_4
    if-nez v1, :cond_a

    return-void

    .line 9
    :cond_a
    iget-object v3, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v3, :cond_b

    move-object v3, v2

    goto :goto_5

    :cond_b
    const-string v4, "radiusX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_5
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_c

    check-cast v3, Ljava/lang/Number;

    goto :goto_6

    :cond_c
    move-object v3, v2

    :goto_6
    if-nez v3, :cond_d

    return-void

    .line 10
    :cond_d
    iget-object v4, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v4, :cond_e

    move-object v4, v2

    goto :goto_7

    :cond_e
    const-string v5, "radiusY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_7
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_f

    move-object v2, v4

    check-cast v2, Ljava/lang/Number;

    :cond_f
    if-nez v2, :cond_10

    return-void

    .line 11
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 12
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 13
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 14
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 15
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v0, v3

    sub-float v7, v1, v2

    add-float/2addr v0, v3

    add-float/2addr v1, v2

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_11

    .line 16
    :cond_11
    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    if-ne v0, v1, :cond_21

    .line 17
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v0, :cond_12

    move-object v0, v2

    goto :goto_8

    :cond_12
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    goto :goto_9

    :cond_13
    move-object v0, v2

    :goto_9
    if-nez v0, :cond_14

    return-void

    .line 18
    :cond_14
    iget-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v1, :cond_15

    move-object v1, v2

    goto :goto_a

    :cond_15
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_16

    check-cast v1, Ljava/lang/Number;

    goto :goto_b

    :cond_16
    move-object v1, v2

    :goto_b
    if-nez v1, :cond_17

    return-void

    .line 19
    :cond_17
    iget-object v3, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v3, :cond_18

    move-object v3, v2

    goto :goto_c

    :cond_18
    const-string/jumbo v4, "width"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_c
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_19

    check-cast v3, Ljava/lang/Number;

    goto :goto_d

    :cond_19
    move-object v3, v2

    :goto_d
    if-nez v3, :cond_1a

    return-void

    .line 20
    :cond_1a
    iget-object v4, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v4, :cond_1b

    move-object v4, v2

    goto :goto_e

    :cond_1b
    const-string v5, "height"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_e
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1c

    check-cast v4, Ljava/lang/Number;

    goto :goto_f

    :cond_1c
    move-object v4, v2

    :goto_f
    if-nez v4, :cond_1d

    return-void

    .line 21
    :cond_1d
    iget-object v5, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-nez v5, :cond_1e

    move-object v5, v2

    goto :goto_10

    :cond_1e
    const-string v6, "cornerRadius"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_10
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_1f

    move-object v2, v5

    check-cast v2, Ljava/lang/Number;

    :cond_1f
    if-nez v2, :cond_20

    return-void

    .line 22
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 23
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 24
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 25
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 26
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 27
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float/2addr v4, v1

    invoke-direct {v6, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v2, v2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 28
    :cond_21
    :goto_11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    .line 29
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method

.method public final getArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    return-object v0
.end method

.method public final getShapePath()Landroid/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    return-object v0
.end method

.method public final getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    return-object v0
.end method

.method public final getTransform()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getType()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    return-object v0
.end method

.method public final isKeep()Z
    .locals 2

    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setShapePath(Landroid/graphics/Path;)V
    .locals 0
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    return-void
.end method
