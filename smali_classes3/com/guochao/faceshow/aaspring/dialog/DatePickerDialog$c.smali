.class Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->P1(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->P1(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

    move-result-object v0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->d:Ljava/util/Calendar;

    iget v3, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->c:I

    iget v4, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->b:I

    iget v5, p1, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->a:I

    invoke-interface/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;->c(Landroid/app/Dialog;Ljava/util/Calendar;III)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$c;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method
