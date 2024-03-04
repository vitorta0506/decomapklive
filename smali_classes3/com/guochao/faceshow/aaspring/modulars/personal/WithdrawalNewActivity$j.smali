.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->showSelectPayWay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliPayClick(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPayPalClick(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPayonnerClick(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onPayonnerV2Click(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onUSDTClick(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
