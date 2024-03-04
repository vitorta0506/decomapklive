.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->a:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;->onFinish()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->b(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;->N(I)V

    :cond_0
    return-void
.end method
