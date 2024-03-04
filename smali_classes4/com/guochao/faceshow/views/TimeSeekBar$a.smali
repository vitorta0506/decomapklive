.class Lcom/guochao/faceshow/views/TimeSeekBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/TimeSeekBar;->n(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/TimeSeekBar;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/TimeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    iget-boolean v1, v0, Lcom/guochao/faceshow/views/TimeSeekBar;->p:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/views/TimeSeekBar;->a(Lcom/guochao/faceshow/views/TimeSeekBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v2}, Lcom/guochao/faceshow/views/TimeSeekBar;->b(Lcom/guochao/faceshow/views/TimeSeekBar;)I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v1, :cond_3

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 4
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->b(Lcom/guochao/faceshow/views/TimeSeekBar;)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->b(Lcom/guochao/faceshow/views/TimeSeekBar;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    :cond_1
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz p1, :cond_2

    const/4 p1, 0x0

    .line 8
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->d(Lcom/guochao/faceshow/views/TimeSeekBar;I)I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->a(Lcom/guochao/faceshow/views/TimeSeekBar;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    iget-boolean v1, v0, Lcom/guochao/faceshow/views/TimeSeekBar;->p:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/views/TimeSeekBar;->c(Lcom/guochao/faceshow/views/TimeSeekBar;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v2}, Lcom/guochao/faceshow/views/TimeSeekBar;->e(Lcom/guochao/faceshow/views/TimeSeekBar;)J

    move-result-wide v2

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v2}, Lcom/guochao/faceshow/views/TimeSeekBar;->b(Lcom/guochao/faceshow/views/TimeSeekBar;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v2}, Lcom/guochao/faceshow/views/TimeSeekBar;->f(Lcom/guochao/faceshow/views/TimeSeekBar;)Lcom/guochao/faceshow/views/TimeSeekBar$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/views/TimeSeekBar$a;->a:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-static {v2}, Lcom/guochao/faceshow/views/TimeSeekBar;->f(Lcom/guochao/faceshow/views/TimeSeekBar;)Lcom/guochao/faceshow/views/TimeSeekBar$c;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar$c;->a(J)V

    :cond_0
    return-void
.end method
