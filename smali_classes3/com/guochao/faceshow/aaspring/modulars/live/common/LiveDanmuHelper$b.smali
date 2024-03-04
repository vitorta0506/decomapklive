.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;
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
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field c:Landroid/graphics/Bitmap;

.field d:Lcom/guochao/faceshow/aaspring/danmu/b;

.field e:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/guochao/faceshow/aaspring/danmu/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->a:Ljava/util/HashMap;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->c:Landroid/graphics/Bitmap;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 6
    iput p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->e:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->e:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/danmu/b;->l(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;->d:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/b;->g()V

    return-void
.end method
