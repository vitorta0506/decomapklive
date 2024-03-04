.class final Lcom/guochao/faceshow/aaspring/views/loopView/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/c;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/c;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->i()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x7d1

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/c;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->FLING:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->l(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/c;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
