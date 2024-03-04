.class public Lcom/guochao/faceshow/aaspring/views/doodle/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/doodle/m$c;,
        Lcom/guochao/faceshow/aaspring/views/doodle/m$b;,
        Lcom/guochao/faceshow/aaspring/views/doodle/m$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field private final b:Lcom/guochao/faceshow/aaspring/views/doodle/l;

.field private final c:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/doodle/m$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->d:Z

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/m;Lcom/guochao/faceshow/aaspring/views/doodle/m$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->c:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    .line 4
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->a:Landroid/view/GestureDetector;

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/l;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/doodle/l$b;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->b:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->k(Z)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/doodle/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->d:Z

    return p0
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->d:Z

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->b:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->j(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->b:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->l(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->c:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->l(Landroid/view/MotionEvent;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->c:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->G(Landroid/view/MotionEvent;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->c:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->S(Landroid/view/MotionEvent;)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->c:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->q(Landroid/view/MotionEvent;)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->b:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->i(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->b:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->h()Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m;->a:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_5
    return v0
.end method
