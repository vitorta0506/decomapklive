.class Lcom/guochao/faceshow/views/floatwindow/FloatView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/floatwindow/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/floatwindow/FloatView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->b(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->e(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p1

    if-eq p5, p1, :cond_3

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p2}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p3}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->b(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p3

    sub-int/2addr p3, p1

    .line 5
    iget-object p4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p4}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->e(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p4

    sub-int/2addr p4, p2

    .line 6
    iget-object p5, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p5}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->b(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p5

    .line 7
    iget-object p6, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p6}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->e(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p6

    .line 8
    iget-object p7, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p7}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p7

    neg-int p7, p7

    if-ge p3, p7, :cond_1

    .line 9
    iget-object p3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p3}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p3

    neg-int p3, p3

    add-int p5, p3, p1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p1

    neg-int p1, p1

    if-ge p4, p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->h(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result p1

    neg-int p4, p1

    add-int p6, p4, p2

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->i(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Lkb/b;

    move-result-object p1

    iput p3, p1, Lkb/b;->c:I

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$b;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->i(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Lkb/b;

    move-result-object p1

    iput p4, p1, Lkb/b;->d:I

    :cond_3
    return-void
.end method
