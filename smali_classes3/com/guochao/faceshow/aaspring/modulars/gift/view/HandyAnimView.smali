.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 Q2\u00020\u0001:\u0003QRSB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u00104\u001a\u00020\nJ\u0018\u00105\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u00152\u0006\u00107\u001a\u000208H\u0002J\u0006\u00109\u001a\u00020\u0007J\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014J\u0012\u0010;\u001a\u00020\u00162\u0008\u00107\u001a\u0004\u0018\u000108H\u0014J\u0018\u0010<\u001a\u00020\u00162\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0014J\u0010\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020AH\u0016J\u001e\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\u0007H\u0002J.\u0010F\u001a\u00020\u00162\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\u0008\u0008\u0002\u0010J\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\u00162\u0006\u0010L\u001a\u00020\"J\u0008\u0010M\u001a\u00020\u0016H\u0002J\u0006\u0010N\u001a\u00020\nJ\u0010\u0010O\u001a\u00020\u00162\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0006\u0010P\u001a\u00020\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR4\u0010\u0012\u001a\u001c\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010(\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R(\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0016\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0014\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "animating",
        "",
        "getAnimating",
        "()Z",
        "setAnimating",
        "(Z)V",
        "animationOnlyMode",
        "getAnimationOnlyMode",
        "setAnimationOnlyMode",
        "capturePointsListener",
        "Lkotlin/Function2;",
        "",
        "Landroid/graphics/PointF;",
        "",
        "getCapturePointsListener",
        "()Lkotlin/jvm/functions/Function2;",
        "setCapturePointsListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "drawSteps",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "drawableSize",
        "giftPathData",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;",
        "h",
        "Landroid/os/Handler;",
        "lastPointF",
        "lastToast",
        "",
        "maxDraw",
        "getMaxDraw",
        "()I",
        "setMaxDraw",
        "(I)V",
        "playPointsListener",
        "Lkotlin/Function1;",
        "getPlayPointsListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setPlayPointsListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "points",
        "clearPoints",
        "drawOnPoint",
        "pointF",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getCurrentDrawCount",
        "getCurrentPoints",
        "onDraw",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "pathToPoints",
        "data",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;",
        "totalCount",
        "playPoints",
        "list",
        "canvasWidth",
        "canvasHeight",
        "clearOnEnd",
        "readTemplatePath",
        "handyGiftPathData",
        "resetView",
        "revocation",
        "setCurrentDrawable",
        "trackSend",
        "Companion",
        "DrawStep",
        "RepeatRunnable",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DRAWABLE_SIZE:F = 30.0f

.field private static final FRAME_TIME:J = 0x42L


# instance fields
.field private animating:Z

.field private animationOnlyMode:Z

.field private capturePointsListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final drawSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private drawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final drawableSize:I

.field private giftPathData:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastPointF:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastToast:J

.field private maxDraw:I

.field private playPointsListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->h:Landroid/os/Handler;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 p2, 0x320

    if-gt p1, p2, :cond_0

    const/high16 p1, 0x41c00000    # 24.0f

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p2, 0x4b0

    const/high16 p3, 0x41f00000    # 30.0f

    if-gt p1, p2, :cond_1

    .line 8
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    .line 10
    :goto_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawableSize:I

    const/16 p1, 0x64

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->maxDraw:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getDrawSteps$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getH$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$pathToPoints(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->pathToPoints(Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resetView(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->resetView()V

    return-void
.end method

.method public static final synthetic access$setDrawable$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static final synthetic access$setGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->giftPathData:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    return-void
.end method

.method private final drawOnPoint(Landroid/graphics/PointF;Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawableSize:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final pathToPoints(Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 5
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3f666666    # 0.9f

    sub-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v2, v2, v1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v4

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 10
    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 11
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;->getGiftCount()I

    move-result v5

    if-ltz v5, :cond_0

    .line 13
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    int-to-float v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    mul-float v6, v6, v3

    const/4 v7, 0x1

    .line 14
    invoke-virtual {v1, v6, v0, v7}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 15
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 16
    new-instance v6, Landroid/graphics/PointF;

    const/4 v7, 0x2

    aget v7, v4, v7

    const/4 v8, 0x5

    aget v8, v4, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;->getRemoveLast()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    :cond_1
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    :cond_2
    return-object p2
.end method

.method public static synthetic playPoints$default(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Ljava/util/List;IIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->playPoints(Ljava/util/List;IIZ)V

    return-void
.end method

.method private final resetView()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final clearPoints()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->capturePointsListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public final getAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animating:Z

    return v0
.end method

.method public final getAnimationOnlyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animationOnlyMode:Z

    return v0
.end method

.method public final getCapturePointsListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->capturePointsListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getCurrentDrawCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final getCurrentPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getMaxDraw()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->maxDraw:I

    return v0
.end method

.method public final getPlayPointsListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->playPointsListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 6
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawOnPoint(Landroid/graphics/PointF;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawOnPoint(Landroid/graphics/PointF;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event.ytop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ybottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animationOnlyMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animating:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-lez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getCurrentDrawCount()I

    move-result v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->maxDraw:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_5

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->lastToast:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xbb8

    cmp-long p1, v5, v7

    if-ltz p1, :cond_4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->lastToast:J

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    const p1, 0x7f1203ea

    const/4 v0, 0x5

    .line 11
    invoke-static {v4, p1, v1, v0, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_4
    return v2

    .line 12
    :cond_5
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->lastPointF:Landroid/graphics/PointF;

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    const/4 p1, 0x3

    if-eq v3, p1, :cond_6

    goto/16 :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 17
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->lastPointF:Landroid/graphics/PointF;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 18
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_9

    .line 19
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->lastPointF:Landroid/graphics/PointF;

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->capturePointsListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->lastPointF:Landroid/graphics/PointF;

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->capturePointsListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 26
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "Graffiti_gift_draw_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 27
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event.y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    .line 29
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_c

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_c
    :goto_3
    return v2
.end method

.method public final playPoints(Ljava/util/List;IIZ)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;IIZ)V"
        }
    .end annotation

    const-string p3, "list"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 5
    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, p3

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animating:Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->h:Landroid/os/Handler;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;ILjava/util/List;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final readTemplatePath(Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handyGiftPathData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getH$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$setGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getDrawSteps$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$getPoints$p(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->getGiftPathList()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;->getGiftCount()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->access$pathToPoints(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;I)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->playPoints(Ljava/util/List;IIZ)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$readTemplatePath$$inlined$doOnLayout$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    return-void
.end method

.method public final revocation()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->capturePointsListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animating:Z

    return-void
.end method

.method public final setAnimationOnlyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->animationOnlyMode:Z

    return-void
.end method

.method public final setCapturePointsListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->capturePointsListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaxDraw(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->maxDraw:I

    return-void
.end method

.method public final setPlayPointsListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->playPointsListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final trackSend()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->giftPathData:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    const-string v1, "format(format, *args)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Graffiti_gift_give_4000_%s"

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "1"

    aput-object v6, v5, v2

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->drawSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "0"

    aput-object v6, v5, v2

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "2"

    aput-object v6, v5, v2

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
