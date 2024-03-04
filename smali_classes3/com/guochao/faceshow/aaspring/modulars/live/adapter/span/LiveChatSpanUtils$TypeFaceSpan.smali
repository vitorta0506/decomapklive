.class final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeFaceSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006JR\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J4\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;",
        "Landroid/text/style/ReplacementSpan;",
        "textSize",
        "",
        "textColor",
        "",
        "(FI)V",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "text",
        "",
        "start",
        "end",
        "x",
        "top",
        "y",
        "bottom",
        "paint",
        "Landroid/graphics/Paint;",
        "getSize",
        "fm",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final typeFace:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final textColor:I

.field private final textSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan$Companion;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f090001

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->typeFace:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->textSize:F

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->textColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    .line 3
    invoke-virtual {p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result p4

    .line 4
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p9, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->textSize:F

    invoke-virtual {p9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->textColor:I

    invoke-virtual {p9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    int-to-float p7, p7

    .line 10
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, p7

    add-float/2addr v2, p7

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v2, v1

    const/4 v1, 0x2

    int-to-float v3, v1

    div-float/2addr v2, v3

    add-int/2addr p8, p6

    div-int/2addr p8, v1

    int-to-float p6, p8

    sub-float/2addr v2, p6

    sub-float/2addr p7, v2

    .line 11
    invoke-virtual {p1, p2, p5, p7, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    invoke-virtual {p9, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    invoke-virtual {p9, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p5, "paint"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    .line 3
    iget p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils$TypeFaceSpan;->textSize:F

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 5
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    float-to-int p1, p2

    return p1
.end method
