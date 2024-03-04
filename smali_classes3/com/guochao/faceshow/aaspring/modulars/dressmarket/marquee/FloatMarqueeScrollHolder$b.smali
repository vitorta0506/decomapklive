.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->l(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->g(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;->j(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/DispatchTouchHorizontalScrollView;)V

    :cond_1
    return-void
.end method
