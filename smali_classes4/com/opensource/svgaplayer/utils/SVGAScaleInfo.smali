.class public final Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/utils/SVGAScaleInfo$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J.\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u0008\u0010#\u001a\u00020\u001cH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00a8\u0006$"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;",
        "",
        "()V",
        "ratio",
        "",
        "getRatio",
        "()F",
        "setRatio",
        "(F)V",
        "ratioX",
        "",
        "getRatioX",
        "()Z",
        "setRatioX",
        "(Z)V",
        "scaleFx",
        "getScaleFx",
        "setScaleFx",
        "scaleFy",
        "getScaleFy",
        "setScaleFy",
        "tranFx",
        "getTranFx",
        "setTranFx",
        "tranFy",
        "getTranFy",
        "setTranFy",
        "performScaleType",
        "",
        "canvasWidth",
        "canvasHeight",
        "videoWidth",
        "videoHeight",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "resetVar",
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
.field private ratio:F

.field private ratioX:Z

.field private scaleFx:F

.field private scaleFy:F

.field private tranFx:F

.field private tranFy:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 3
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    .line 4
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    return-void
.end method

.method private final resetVar()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    .line 2
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 4
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    .line 5
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    return-void
.end method


# virtual methods
.method public final getRatio()F
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    return v0
.end method

.method public final getRatioX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    return v0
.end method

.method public final getScaleFx()F
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    return v0
.end method

.method public final getScaleFy()F
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return v0
.end method

.method public final getTranFx()F
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return v0
.end method

.method public final getTranFy()F
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return v0
.end method

.method public final performScaleType(FFFFLandroid/widget/ImageView$ScaleType;)V
    .locals 10
    .param p5    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scaleType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpg-float v3, p1, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_c

    cmpg-float v3, p2, v0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_c

    cmpg-float v3, p3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_c

    cmpg-float v0, p4, v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 1
    :cond_4
    invoke-direct {p0}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->resetVar()V

    sub-float v0, p1, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v4, p2, p4

    div-float/2addr v4, v3

    div-float v5, p3, p4

    div-float v6, p1, p2

    div-float v7, p2, p4

    div-float v8, p1, p3

    .line 2
    sget-object v9, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p5

    aget p5, v9, p5

    packed-switch p5, :pswitch_data_0

    .line 3
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 4
    iput-boolean v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 5
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 6
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    goto/16 :goto_4

    .line 7
    :pswitch_0
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    cmpl-float p1, v8, v7

    if-lez p1, :cond_5

    const/4 v1, 0x1

    .line 8
    :cond_5
    iput-boolean v1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 9
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 10
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    goto/16 :goto_4

    :pswitch_1
    cmpl-float p5, v5, v6

    if-lez p5, :cond_6

    .line 11
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 12
    iput-boolean v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 13
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 14
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p4, p4, v8

    sub-float/2addr p2, p4

    .line 15
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    goto/16 :goto_4

    .line 16
    :cond_6
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 17
    iput-boolean v1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 18
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 19
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p3, p3, v7

    sub-float/2addr p1, p3

    .line 20
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    goto/16 :goto_4

    :pswitch_2
    cmpl-float p1, v5, v6

    if-lez p1, :cond_7

    .line 21
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 22
    iput-boolean v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 23
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 24
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    goto/16 :goto_4

    .line 25
    :cond_7
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 26
    iput-boolean v1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 27
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 28
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    goto/16 :goto_4

    :pswitch_3
    cmpl-float p5, v5, v6

    if-lez p5, :cond_8

    .line 29
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 30
    iput-boolean v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 31
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 32
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p4, p4, v8

    sub-float/2addr p2, p4

    div-float/2addr p2, v3

    .line 33
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    goto :goto_4

    .line 34
    :cond_8
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 35
    iput-boolean v1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 36
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 37
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p3, p3, v7

    sub-float/2addr p1, p3

    div-float/2addr p1, v3

    .line 38
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    goto :goto_4

    :pswitch_4
    cmpg-float p5, p3, p1

    if-gez p5, :cond_9

    cmpg-float p5, p4, p2

    if-gez p5, :cond_9

    .line 39
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    .line 40
    iput v4, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    goto :goto_4

    :cond_9
    cmpl-float p5, v5, v6

    if-lez p5, :cond_a

    .line 41
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 42
    iput-boolean v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 43
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 44
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p4, p4, v8

    sub-float/2addr p2, p4

    div-float/2addr p2, v3

    .line 45
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    goto :goto_4

    .line 46
    :cond_a
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 47
    iput-boolean v1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 48
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 49
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p3, p3, v7

    sub-float/2addr p1, p3

    div-float/2addr p1, v3

    .line 50
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    goto :goto_4

    :pswitch_5
    cmpl-float p5, v5, v6

    if-lez p5, :cond_b

    .line 51
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 52
    iput-boolean v1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 53
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 54
    iput v7, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p3, p3, v7

    sub-float/2addr p1, p3

    div-float/2addr p1, v3

    .line 55
    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    goto :goto_4

    .line 56
    :cond_b
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    .line 57
    iput-boolean v2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    .line 58
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    .line 59
    iput v8, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    mul-float p4, p4, v8

    sub-float/2addr p2, p4

    div-float/2addr p2, v3

    .line 60
    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    goto :goto_4

    .line 61
    :pswitch_6
    iput v0, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    .line 62
    iput v4, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    :cond_c
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratio:F

    return-void
.end method

.method public final setRatioX(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->ratioX:Z

    return-void
.end method

.method public final setScaleFx(F)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFx:F

    return-void
.end method

.method public final setScaleFy(F)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->scaleFy:F

    return-void
.end method

.method public final setTranFx(F)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFx:F

    return-void
.end method

.method public final setTranFy(F)V
    .locals 0

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->tranFy:F

    return-void
.end method
