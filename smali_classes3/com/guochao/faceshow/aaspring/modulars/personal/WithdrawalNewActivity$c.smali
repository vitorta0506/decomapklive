.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->onViewClicked(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->getPayoneerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
