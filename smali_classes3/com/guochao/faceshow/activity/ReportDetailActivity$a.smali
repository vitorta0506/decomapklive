.class Lcom/guochao/faceshow/activity/ReportDetailActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ReportDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ReportDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFirst:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSecond:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbThird:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbForth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFifth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEight:Landroid/widget/CheckBox;

    .line 2
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSixth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSeventh:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbNinth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbTenth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEleven:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbChild:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    :cond_0
    const-wide/16 v0, 0xbb8

    .line 5
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->etReportContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->d0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->b0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    :cond_2
    const-string p1, ""

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFirst:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSecond:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbThird:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "3,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbForth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "4,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFifth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "5,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSixth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "6,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSeventh:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "7,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEight:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "8,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbNinth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "9,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbTenth:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "10,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEleven:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "11,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbChild:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "12,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->i0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    const v0, 0x7f1207a8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 37
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    :goto_0
    return-void
.end method
