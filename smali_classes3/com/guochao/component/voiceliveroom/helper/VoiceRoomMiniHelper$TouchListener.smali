.class final Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;",
        "Landroid/view/View$OnTouchListener;",
        "root",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "activity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "getActivity",
        "()Ljava/lang/ref/WeakReference;",
        "setActivity",
        "(Ljava/lang/ref/WeakReference;)V",
        "downX",
        "",
        "downY",
        "slop",
        "",
        "startX",
        "startY",
        "onTouch",
        "",
        "v",
        "event",
        "Landroid/view/MotionEvent;",
        "component_liveroom_release"
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
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private downX:F

.field private downY:F

.field private final root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slop:I

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->root:Landroid/view/View;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->slop:I

    return-void
.end method

.method public static synthetic a(Landroid/view/WindowManager$LayoutParams;Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->onTouch$lambda-1$lambda-0(Landroid/view/WindowManager$LayoutParams;Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final onTouch$lambda-1$lambda-0(Landroid/view/WindowManager$LayoutParams;Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$lp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    iget-object p2, p1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->activity:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->root:Landroid/view/View;

    invoke-interface {p2, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    goto/16 :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 5
    iget v1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->startX:F

    add-float/2addr v1, p1

    iget p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->downX:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6
    iget p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->startY:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->downY:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 7
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->activity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->root:Landroid/view/View;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 10
    iget v5, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->downX:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->slop:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    iget v2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->downY:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->slop:I

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_2

    .line 12
    :cond_4
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->root:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v4

    add-int/2addr p1, p2

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p2

    div-int/2addr p2, v4

    if-le p1, p2, :cond_5

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p2

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->root:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p2, v2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 15
    :cond_5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    new-array p2, v4, [F

    .line 16
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->root:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v4

    sub-int/2addr p1, v2

    int-to-float p1, p1

    aput p1, p2, v1

    .line 17
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, p1

    aput p1, p2, v3

    .line 18
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/guochao/component/voiceliveroom/helper/d;

    invoke-direct {p2, v0, p0}, Lcom/guochao/component/voiceliveroom/helper/d;-><init>(Landroid/view/WindowManager$LayoutParams;Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x64

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->downX:F

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->downY:F

    .line 24
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->startX:F

    .line 25
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->startY:F

    :cond_7
    :goto_2
    return v3
.end method

.method public final setActivity(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method
