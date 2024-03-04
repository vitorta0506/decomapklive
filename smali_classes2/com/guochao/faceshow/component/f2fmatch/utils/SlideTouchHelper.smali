.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;",
        "",
        "()V",
        "callback",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;",
        "getCallback",
        "()Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;",
        "setCallback",
        "(Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;)V",
        "lastX",
        "",
        "getLastX",
        "()F",
        "setLastX",
        "(F)V",
        "lastY",
        "getLastY",
        "setLastY",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "Callback",
        "component_f2f_match_release"
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
.field private callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastX:F

.field private lastY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;

    return-object v0
.end method

.method public final getLastX()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastX:F

    return v0
.end method

.method public final getLastY()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastY:F

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastY:F

    sub-float/2addr p1, v2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;->slideDownConfirmed()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;->slideUpConfirmed()V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastX:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastY:F

    :goto_0
    return v3
.end method

.method public final setCallback(Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;

    return-void
.end method

.method public final setLastX(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastX:F

    return-void
.end method

.method public final setLastY(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->lastY:F

    return-void
.end method
