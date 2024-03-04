.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showSelectPayWay$bankCardAndAliPayDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;->showSelectPayWay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showSelectPayWay$bankCardAndAliPayDialog$1",
        "Lcom/guochao/faceshow/views/a$b;",
        "Landroid/app/Dialog;",
        "dialog",
        "",
        "onAliPayClick",
        "onBankCardPay",
        "onPayPalClick",
        "onPayonnerClick",
        "onUSDTClick",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showSelectPayWay$bankCardAndAliPayDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliPayClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showSelectPayWay$bankCardAndAliPayDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;->access$initAliPayData(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onBankCardPay(Landroid/app/Dialog;)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPayPalClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPayonnerClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPayonnerV2Click(Landroid/app/Dialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/b;->a(Lcom/guochao/faceshow/views/a$b;Landroid/app/Dialog;)V

    return-void
.end method

.method public onUSDTClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
