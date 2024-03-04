.class Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->b2(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Dialog;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public u(Landroid/app/Dialog;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    const p2, 0x7f120b06

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%d"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;I)I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getMonthOfYear(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;I)I

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getMonthOfYear(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "%d/0%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getMonthOfYear(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "%d/%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const p2, 0x7f0a0c6f

    if-ne p1, p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const p2, 0x7f0a0c81

    if-ne p1, p2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Ljava/lang/String;)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method
