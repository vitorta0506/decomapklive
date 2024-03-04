.class Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->showSelectPayWay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliPayClick(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->m0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onBankCardPay(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->n0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPayPalClick(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->o0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPayonnerClick(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->p0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic onPayonnerV2Click(Landroid/app/Dialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/b;->a(Lcom/guochao/faceshow/views/a$b;Landroid/app/Dialog;)V

    return-void
.end method

.method public synthetic onUSDTClick(Landroid/app/Dialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/b;->b(Lcom/guochao/faceshow/views/a$b;Landroid/app/Dialog;)V

    return-void
.end method
