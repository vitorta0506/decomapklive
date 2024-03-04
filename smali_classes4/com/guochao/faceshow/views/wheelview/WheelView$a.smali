.class Lcom/guochao/faceshow/views/wheelview/WheelView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/wheelview/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->d(Lcom/guochao/faceshow/views/wheelview/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->f(Lcom/guochao/faceshow/views/wheelview/WheelView;)Lcom/guochao/faceshow/views/wheelview/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->d(Lcom/guochao/faceshow/views/wheelview/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/wheelview/a;->l(II)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->b(Lcom/guochao/faceshow/views/wheelview/WheelView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->z()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->c(Lcom/guochao/faceshow/views/wheelview/WheelView;I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->d(Lcom/guochao/faceshow/views/wheelview/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->e(Lcom/guochao/faceshow/views/wheelview/WheelView;I)I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->f(Lcom/guochao/faceshow/views/wheelview/WheelView;)Lcom/guochao/faceshow/views/wheelview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/wheelview/a;->p()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->d(Lcom/guochao/faceshow/views/wheelview/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->e(Lcom/guochao/faceshow/views/wheelview/WheelView;I)I

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->f(Lcom/guochao/faceshow/views/wheelview/WheelView;)Lcom/guochao/faceshow/views/wheelview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/wheelview/a;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->a(Lcom/guochao/faceshow/views/wheelview/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->y()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->b(Lcom/guochao/faceshow/views/wheelview/WheelView;Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->e(Lcom/guochao/faceshow/views/wheelview/WheelView;I)I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;->a:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
