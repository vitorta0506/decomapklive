.class Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->K(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Z)Z

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->a:F

    sub-float/2addr v0, v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->b:F

    sub-float/2addr v4, v5

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v5, v4

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    cmpl-float v0, v4, v6

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->K(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Z)Z

    .line 8
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->a:F

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->b:F

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpg-float p2, v3, p2

    if-gez p2, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float v3, p2, v0

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->L(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)F

    move-result p2

    neg-float p2, p2

    cmpg-float p2, v5, p2

    if-gez p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->L(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)F

    move-result p2

    neg-float v5, p2

    .line 14
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr p2, v4

    cmpl-float p2, v3, p2

    if-lez p2, :cond_4

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    sub-float v3, p2, v3

    .line 16
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p2

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->isNavigationBarShown(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, p2

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->P(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->L(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)F

    move-result v0

    sub-float/2addr p2, v0

    cmpl-float p2, v5, p2

    if-lez p2, :cond_6

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->P(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->L(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)F

    move-result v0

    sub-float v5, p2, v0

    .line 20
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 21
    invoke-virtual {p1, v5}, Landroid/view/View;->setY(F)V

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->J(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->c:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->a:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_b

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->d:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->b:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    .line 24
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->E(FF)Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 25
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;->a:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;->b:Landroid/view/View;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 26
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->K(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Z)Z

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->a:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->c:F

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->b:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$b;->d:F

    :cond_b
    :goto_1
    return v1
.end method
