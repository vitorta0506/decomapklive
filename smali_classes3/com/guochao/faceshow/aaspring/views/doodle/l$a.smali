.class Lcom/guochao/faceshow/aaspring/views/doodle/l$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/l;->k(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/l;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/l$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/l$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->a(Lcom/guochao/faceshow/aaspring/views/doodle/l;F)F

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/l$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->b(Lcom/guochao/faceshow/aaspring/views/doodle/l;F)F

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/l$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/l;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->c(Lcom/guochao/faceshow/aaspring/views/doodle/l;I)I

    return v0
.end method
