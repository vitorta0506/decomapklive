.class public Lcom/guochao/faceshow/aaspring/danmu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field c:J

.field d:Landroid/graphics/Bitmap;

.field e:I

.field f:F

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->i:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->k:Z

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->m:I

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9500\u6bc1\u4e86bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Danmu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->l:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->k:Z

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->p:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->o:J

    return-wide v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getMvpLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public f(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->l:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->i:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->k:Z

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->m:I

    return-void
.end method

.method public j(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->p:J

    return-void
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->o:J

    return-void
.end method

.method public l(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->l:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->l:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public m(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/danmu/b;->n:J

    return-void
.end method
