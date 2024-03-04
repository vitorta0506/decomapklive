.class Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->P1(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;->P1(Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;)Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$d;->b(Landroid/app/Dialog;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog$b;->a:Lcom/guochao/faceshow/aaspring/dialog/DatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    :goto_0
    return-void
.end method
