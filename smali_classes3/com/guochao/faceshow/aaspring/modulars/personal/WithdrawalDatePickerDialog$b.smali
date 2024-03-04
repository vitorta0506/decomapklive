.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    const v0, 0x7f1200fb

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->b:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->c:Ljava/util/Calendar;

    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;->u(Landroid/app/Dialog;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
