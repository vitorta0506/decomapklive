.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->G0(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->a:Z

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->g(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->G(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->a:Z

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$r;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V

    :cond_1
    :goto_0
    return-void
.end method
