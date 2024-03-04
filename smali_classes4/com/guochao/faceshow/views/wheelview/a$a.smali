.class Lcom/guochao/faceshow/views/wheelview/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/wheelview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/wheelview/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/wheelview/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/wheelview/a$a;->a:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/a$a;->a:Lcom/guochao/faceshow/views/wheelview/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/wheelview/a;->b(Lcom/guochao/faceshow/views/wheelview/a;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/a$a;->a:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-static {p1}, Lcom/guochao/faceshow/views/wheelview/a;->c(Lcom/guochao/faceshow/views/wheelview/a;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/a$a;->a:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-static {p1}, Lcom/guochao/faceshow/views/wheelview/a;->a(Lcom/guochao/faceshow/views/wheelview/a;)I

    move-result v2

    neg-float p1, p4

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/a$a;->a:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/wheelview/a;->d(Lcom/guochao/faceshow/views/wheelview/a;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
