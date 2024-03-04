.class Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->a:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->c:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->b:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->c:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->R1()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->a:F

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$b;->b:F

    return v1
.end method
