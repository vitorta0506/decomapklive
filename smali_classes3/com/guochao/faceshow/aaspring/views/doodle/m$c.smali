.class Lcom/guochao/faceshow/aaspring/views/doodle/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/doodle/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

.field private b:Z

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/views/doodle/m;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/m;Lcom/guochao/faceshow/aaspring/views/doodle/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->e:Lcom/guochao/faceshow/aaspring/views/doodle/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->b:Z

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    return-void
.end method


# virtual methods
.method public G(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->G(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public S(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->S(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public U(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->U(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Lcom/guochao/faceshow/aaspring/views/doodle/l;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l$b;->a(Lcom/guochao/faceshow/aaspring/views/doodle/l;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/guochao/faceshow/aaspring/views/doodle/l;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l$b;->b(Lcom/guochao/faceshow/aaspring/views/doodle/l;)V

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/views/doodle/l;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->b:Z

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->d:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->U(Landroid/view/MotionEvent;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l$b;->c(Lcom/guochao/faceshow/aaspring/views/doodle/l;)Z

    move-result p1

    return p1
.end method

.method public l(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->l(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->b:Z

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->e:Lcom/guochao/faceshow/aaspring/views/doodle/m;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/m;->a(Lcom/guochao/faceshow/aaspring/views/doodle/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    return p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->x(Landroid/view/MotionEvent;)V

    .line 6
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->d:Landroid/view/MotionEvent;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public q(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->q(Landroid/view/MotionEvent;)V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->c:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->d:Landroid/view/MotionEvent;

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->U(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public x(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/m$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/m$a;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$a;->x(Landroid/view/MotionEvent;)V

    return-void
.end method
