.class final Lcom/guochao/faceshow/aaspring/views/loopView/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->d:I

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->b:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->d:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->b:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->b:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->c:I

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->c:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->c:I

    .line 6
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->a:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    .line 10
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->b:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/e;->b:I

    :goto_1
    return-void
.end method
