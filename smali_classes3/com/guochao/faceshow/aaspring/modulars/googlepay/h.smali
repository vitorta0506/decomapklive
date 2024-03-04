.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/googlepay/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/h;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    return-void
.end method


# virtual methods
.method public synthetic onConsumeResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public synthetic onPayError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPayResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public final onSetupResponse(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/h;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;Z)V

    return-void
.end method

.method public synthetic onSubscribeFailed()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->d(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public synthetic onSubscribeSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->e(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public synthetic startSubscribe()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method
