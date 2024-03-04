.class public final Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/util/IScaleType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0011H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1",
        "Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "videoHeight",
        "",
        "getVideoHeight",
        "()I",
        "setVideoHeight",
        "(I)V",
        "videoWidth",
        "getVideoWidth",
        "setVideoWidth",
        "getLayoutParam",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "layoutWidth",
        "layoutHeight",
        "layoutParams",
        "getRealSize",
        "Lkotlin/Pair;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p5    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "layoutParams"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoWidth:I

    .line 2
    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoHeight:I

    .line 3
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v0, p1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    mul-float v0, v0, p4

    float-to-int p3, v0

    invoke-static {p3, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    invoke-direct {p5, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x51

    .line 4
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

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoHeight:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoWidth:I

    return v0
.end method

.method public final setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoHeight:I

    return-void
.end method

.method public final setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion$startPlay$1;->videoWidth:I

    return-void
.end method
