.class public Lz8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field e:I

.field f:I

.field g:I

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lz8/a;->e:I

    const/high16 v0, 0x42480000    # 50.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lz8/a;->f:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x425c0000    # 55.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lz8/a;->g:I

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lz8/a;->h:Landroid/app/Activity;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    if-eq v3, v4, :cond_7

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 7
    iget v1, p0, Lz8/a;->a:F

    iget v3, p0, Lz8/a;->c:F

    sub-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 8
    iget v1, p0, Lz8/a;->b:F

    iget v3, p0, Lz8/a;->d:F

    sub-float/2addr p2, v3

    add-float/2addr v1, p2

    float-to-int p2, v1

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 10
    iget v3, p0, Lz8/a;->f:I

    if-gt p2, v3, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    int-to-float v3, p2

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_2

    float-to-int p2, v1

    :cond_2
    :goto_0
    const/high16 v1, 0x41000000    # 8.0f

    .line 11
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 12
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v3

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_4

    move v0, v3

    .line 14
    :cond_4
    :goto_1
    instance-of v1, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    .line 15
    move-object v3, v2

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 16
    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :cond_5
    int-to-float v0, v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    int-to-float p2, p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 19
    :goto_2
    iget-object p2, p0, Lz8/a;->h:Landroid/app/Activity;

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 21
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_5

    :cond_7
    int-to-float p2, v0

    .line 22
    iget v0, p0, Lz8/a;->c:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lz8/a;->e:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_b

    int-to-float p2, v1

    iget v0, p0, Lz8/a;->d:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lz8/a;->e:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_b

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_5

    .line 24
    :cond_8
    instance-of v0, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_9

    move-object v1, v2

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    :goto_3
    iput v1, p0, Lz8/a;->a:F

    if-eqz v0, :cond_a

    .line 25
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    :goto_4
    iput p1, p0, Lz8/a;->b:F

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lz8/a;->d:F

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lz8/a;->c:F

    :cond_b
    :goto_5
    return v4
.end method
