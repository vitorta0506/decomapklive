.class public Lcom/guochao/faceshow/views/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/t$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:Lcom/guochao/faceshow/views/t$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/t;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    .line 2
    iput v1, p0, Lcom/guochao/faceshow/views/t;->b:F

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/views/t;->b:F

    sub-float/2addr p1, v1

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/views/t;->b:F

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/views/t;->c:Lcom/guochao/faceshow/views/t$a;

    if-eqz p2, :cond_4

    .line 6
    invoke-interface {p2, p1}, Lcom/guochao/faceshow/views/t$a;->a(F)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/t;->c:Lcom/guochao/faceshow/views/t$a;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/guochao/faceshow/views/t$a;->b()V

    .line 9
    :cond_2
    iput v1, p0, Lcom/guochao/faceshow/views/t;->b:F

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/t;->b:F

    :cond_4
    :goto_0
    return v0
.end method

.method public setOnPositionChangedListener(Lcom/guochao/faceshow/views/t$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/t;->c:Lcom/guochao/faceshow/views/t$a;

    return-void
.end method
