.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/guochao/faceshow/aaspring/views/e;

.field private final c:[I

.field d:Lcom/guochao/faceshow/aaspring/danmu/b;

.field e:I

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;[Lcom/guochao/faceshow/aaspring/views/e;[ILcom/guochao/faceshow/aaspring/danmu/b;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->e:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->b:[Lcom/guochao/faceshow/aaspring/views/e;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->c:[I

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 7
    array-length p1, p2

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->f:I

    .line 8
    iput p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->b:[Lcom/guochao/faceshow/aaspring/views/e;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->e:I

    aget-object v1, v1, v2

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->g:I

    invoke-virtual {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->l(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->g()V

    .line 7
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->c:[I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->e:I

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->e:I

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->f:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;->e:I

    :cond_2
    return-void
.end method
