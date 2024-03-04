.class public final Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/util/IScaleType;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J0\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;",
        "Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "()V",
        "realHeight",
        "",
        "realWidth",
        "getFitCenterSize",
        "Lkotlin/Pair;",
        "layoutWidth",
        "layoutHeight",
        "videoWidth",
        "videoHeight",
        "getLayoutParam",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "layoutParams",
        "getRealSize",
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
.field private realHeight:I

.field private realWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFitCenterSize(IIII)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v2, v0, v1

    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    cmpl-float p4, v2, p3

    if-lez p4, :cond_0

    mul-float p3, p3, v1

    float-to-int p1, p3

    goto :goto_0

    :cond_0
    div-float/2addr v0, p3

    float-to-int p2, v0

    :goto_0
    new-instance p3, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method


# virtual methods
.method public getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0
    .param p5    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;->getFitCenterSize(IIII)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gtz p2, :cond_0

    if-gtz p1, :cond_0

    return-object p5

    .line 2
    :cond_0
    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;->realWidth:I

    .line 3
    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;->realHeight:I

    .line 4
    iput p2, p5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5
    iput p1, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x11

    .line 6
    iput p1, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object p5
.end method

.method public getRealSize()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/Pair;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;->realWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;->realHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
