.class public final Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0014\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;",
        "Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "()V",
        "realHeight",
        "",
        "realWidth",
        "getLayoutParam",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "layoutWidth",
        "layoutHeight",
        "videoWidth",
        "videoHeight",
        "layoutParams",
        "getRealSize",
        "Lkotlin/Pair;",
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


# virtual methods
.method public getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0
    .param p5    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p3, -0x1

    .line 1
    iput p3, p5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2
    iput p3, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3
    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realWidth:I

    .line 4
    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realHeight:I

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

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
