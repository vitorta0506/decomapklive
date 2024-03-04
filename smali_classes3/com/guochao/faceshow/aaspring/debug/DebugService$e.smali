.class Lcom/guochao/faceshow/aaspring/debug/DebugService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/debug/DebugService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/guochao/faceshow/aaspring/debug/DebugService;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->e:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;Lcom/guochao/faceshow/aaspring/debug/DebugService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;-><init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 6
    iget v4, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->a:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    iget v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->b:F

    sub-float/2addr v1, p2

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v4

    if-lez p2, :cond_5

    .line 8
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->c:Z

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->e:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/debug/DebugService;->f:Landroid/view/WindowManager$LayoutParams;

    int-to-float p1, p1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->a:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, v0

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->b:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 11
    iget-object p1, p2, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->e:Lcom/guochao/faceshow/aaspring/debug/DebugService;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->f:Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->h:I

    div-int/lit8 v5, v1, 0x2

    if-lt v0, v5, :cond_2

    .line 13
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 14
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->d:Z

    goto :goto_0

    .line 15
    :cond_2
    div-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    .line 16
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->d:Z

    .line 17
    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->b:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->a:F

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->a:F

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;->b:F

    :cond_5
    :goto_1
    return v2
.end method
